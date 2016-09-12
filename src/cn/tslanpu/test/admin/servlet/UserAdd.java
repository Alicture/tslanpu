package cn.tslanpu.test.admin.servlet;

import java.awt.Image;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.ImageIcon;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import cn.itcast.commons.CommonUtils;
import cn.tslanpu.test.admin.domain.Admin;
import cn.tslanpu.test.admin.service.AdminService;
import cn.tslanpu.test.utils.TokenProccessor;

public class UserAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AdminService adminService = new AdminService();

	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		((HttpServletResponse)response).addHeader("Access-Control-Allow-Origin", "*");
	          	
			
			/*
	  		 * 1. commons-fileupload的上传三步
	  		 */
	  		// 创建工具
	  		FileItemFactory factory = new DiskFileItemFactory();
	  		/*
	  		 * 2. 创建解析器对象
	  		 */
	  		ServletFileUpload sfu = new ServletFileUpload(factory);
	  	
	  		sfu.setFileSizeMax(5000 * 1024);//设置单个上传的文件上限为100KB
	  		/*
			 * 3. 解析request得到List<FileItem>
			 */
			List<FileItem> fileItemList = null;
			try {
				fileItemList = sfu.parseRequest(request);
			} catch (FileUploadException e) {
				// 如果出现这个异步，说明单个文件超出了80KB
				//error("上传的文件超出了80KB", request, response);
				request.setAttribute("success", "请上传小于1M的照片");
				 request.getRequestDispatcher("pages/regulator/personnel.jsp").forward(request, response);
				 return;
			}
			/*
			 * 4. 把List<FileItem>封装到Book对象中
			 * 4.1 首先把“普通表单字段”放到一个Map中，再把Map转换成Book和Category对象，再建立两者的关系
			 */
			Map<String,Object> map = new HashMap<String,Object>();
			String group = "";
			for(FileItem fileItem : fileItemList) {
				if(fileItem.isFormField()) {//如果是普通表单字段
					if(!fileItem.getFieldName().equals("groupid")){
						map.put(fileItem.getFieldName(), fileItem.getString("UTF-8"));
					}else if(fileItem.getFieldName().equals("groupid")){
						group +=fileItem.getString("UTF-8") + ",";
					}
				}
			}
			
			group += "0";
			Admin admin = CommonUtils.toBean(map, Admin.class);//把Map中大部分数据封装到Book对象中
			admin.setGroupid(group.toString());
			
			/*
			 * 
			 */
			String client_token = (String) map.get("token");
			 boolean b = false;//判断用户是否是重复提交
			 //1、如果用户提交的表单数据中没有token，则用户是重复提交了表单
	         if(client_token==null){
	             b = true;
	         }
	         //取出存储在Session中的token
	         String server_token = (String) request.getSession().getAttribute("tokenU");
	         //2、如果当前用户的Session中不存在Token(令牌)，则用户是重复提交了表单
	         if(server_token==null){
	             b =  true;
	        }
	         //3、存储在Session中的Token(令牌)与表单提交的Token(令牌)不同，则用户是重复提交了表单
	         if(!client_token.equals(server_token)){
	             b =  true;
	         }
			 if(b==true){
				  request.setAttribute("success", "请不要重复提交");
	           request.getRequestDispatcher("pages/regulator/personnel.jsp").forward(request, response);
	           return;
	          }
	          request.getSession().removeAttribute("tokenU");//移除session中的token
	          
	          String token = TokenProccessor.getInstance().makeToken();//重新创建创建令牌
	  		  request.getSession().setAttribute("tokenU", token);
			
	  		  
			/*
			 * 4.2 把上传的图片保存起来
			 *   > 获取文件名：截取之
			 *   > 给文件添加前缀：使用uuid前缀，为也避免文件同名现象
			 *   > 校验文件的扩展名：只能是jpg
			 *   > 校验图片的尺寸
			 *   > 指定图片的保存路径，这需要使用ServletContext#getRealPath()
			 *   > 保存之
			 *   > 把图片的路径设置给Book对象
			 */
			// 获取文件名
			FileItem fileItem = fileItemList.get(2);//获取大图
			if(fileItem.getSize() == 0){
				admin.setImage("user_img/user.jpg");
			}else{
				String filename = fileItem.getName();
				// 截取文件名，因为部分浏览器上传的绝对路径
				int index = filename.lastIndexOf("\\");
				if(index != -1) {
					filename = filename.substring(index + 1);
				}
				// 给文件名添加uuid前缀，避免文件同名现象
				filename = CommonUtils.uuid() + "_" + filename;
				// 校验文件名称的扩展名
				if(!filename.toLowerCase().endsWith(".jpg") && !filename.toLowerCase().endsWith(".png")
						&& !filename.toLowerCase().endsWith(".jpeg") && !filename.toLowerCase().endsWith(".gif")) {
					//error("上传的图片扩展名必须是JPG", request, response);
					request.setAttribute("success", "上传的图片不符合格式");
					 request.getRequestDispatcher("pages/regulator/personnel.jsp").forward(request, response);
					 return;
				}
				// 校验图片的尺寸
				// 保存上传的图片，把图片new成图片对象：Image、Icon、ImageIcon、BufferedImage、ImageIO
				/*
				 * 保存图片：
				 * 1. 获取真实路径
				 */
				String savepath = this.getServletContext().getRealPath("/user_img");
				/*
				 * 2. 创建目标文件
				 */
				File destFile = new File(savepath, filename);
				/*
				 * 3. 保存文件
				 */
				try {
					fileItem.write(destFile);//它会把临时文件重定向到指定的路径，再删除临时文件
				} catch (Exception e) {
					throw new RuntimeException(e);
				}
				// 校验尺寸
				// 1. 使用文件路径创建ImageIcon
				ImageIcon icon = new ImageIcon(destFile.getAbsolutePath());
				// 2. 通过ImageIcon得到Image对象
				Image image = icon.getImage();
				// 3. 获取宽高来进行校验
				if(image.getWidth(null) > 350 || image.getHeight(null) > 350) {
					//error("您上传的图片尺寸超出了350*350！", request, response);
					destFile.delete();//删除图片
					request.setAttribute("success", "您上传的图片尺寸超出了350*350！");
					request.getRequestDispatcher("pages/regulator/personnel.jsp").forward(request, response);
					return;
				}
				// 把图片的路径设置给admin对象
				admin.setImage("user_img/" + filename);
			}
			
			admin.setPassword("666666");//设置默认密码
	          
			 int num = adminService.add(admin);
	         if(num > 0){
	       	  request.setAttribute("success", "提交成功");
	         }else{
	       	  request.setAttribute("success", "提交失败");
	         }
	          
	 		 /*String[] groupid = request.getParameterValues("groupid");
	          if(groupid != null){
	        	  StringBuffer group = new StringBuffer();//转换成{1,2,3}形式
	              for(int i = 0; i<groupid.length;i++){
	            	  if(i != groupid.length - 1){
	            		  group.append(groupid[i]).append(",");
	            	  }else{
	            		  group.append(groupid[i]);
	            	  }
	              }
	              admin.setGroupid(group.toString());
	          }else{
	        	  admin.setGroupid("0");
	          }*/
	          request.getRequestDispatcher("pages/regulator/personnel.jsp").forward(request, response);
			
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doGet(request, response);
	}
	
	/*
	 * 保存错误信息，转发到add.jsp
	 */
	/*private void error(String msg, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			request.setAttribute("msg", msg);
			request.getRequestDispatcher("/adminjsps/admin/book/add.jsp").
					forward(request, response);
	}*/
}