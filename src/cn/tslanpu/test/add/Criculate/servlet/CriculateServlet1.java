package cn.tslanpu.test.add.Criculate.servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.tslanpu.test.add.Criculate.domain.Criculate;
import cn.tslanpu.test.add.Criculate.service.CriculateService;
import cn.tslanpu.test.add.industry.domain.Industry;
import cn.tslanpu.test.admin.domain.Admin;
import cn.tslanpu.test.utils.BaseServlet;
import cn.tslanpu.test.utils.TokenProccessor;


public class CriculateServlet1 extends BaseServlet {
	private static final long serialVersionUID = 1L;
	private CriculateService criculateService = new CriculateService();
	
	//增加信息
	public void add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			 boolean b = isRepeatSubmit(request);//判断用户是否是重复提交
	         if(b==true){
	        	 request.setAttribute("success", "请不要重复提交");
	        	 request.getRequestDispatcher("/pages/tables/criculate/criculate.jsp").forward(request, response);
	             return;
	         }
	         request.getSession().removeAttribute("tokenC");//移除session中的token
	         
	         String token = TokenProccessor.getInstance().makeToken();//重新创建创建令牌
	 		 request.getSession().setAttribute("tokenC", token);
	         
			Map map = request.getParameterMap();
			Criculate criculate = CommonUtils.toBean(map, Criculate.class);
			criculateService.add(criculate);
			request.setAttribute("success", "提交成功");
			request.getRequestDispatcher("/pages/tables/criculate/criculate.jsp").forward(request, response);
	}
	
	//查看详细信息
	public void infor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			
			//根据id查询所属分局
			String str  = request.getParameter("id");
			int id = Integer.parseInt(str);
			Criculate criculate = criculateService.criculateFind(id);
			
			//保存当前页码
			String pageCode = request.getParameter("pageCode");
			request.setAttribute("pageCode", pageCode);
			
			//保存当前所属部门
			String name = request.getParameter("item");
			request.setAttribute("item", name);
			
			request.setAttribute("criculate", criculate);
			request.getRequestDispatcher("/pages/tables/criculate/criculateInformation.jsp").forward(request, response);
	}
	
	//更新信息
	public void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			//判断返回的状态
			request.setAttribute("status", 2);
		
			/*
			 * 获取当前Id根据id查询及修改
			 */
			String str = request.getParameter("id");
			int id = Integer.parseInt(str);
			
			
			
			//根据部门名称查询部门号
			//String department = request.getParameter("department");
			//String departmentId = actionService.queryActionname(department).getDepartment();
			
			Map map = request.getParameterMap();
			Criculate criculate1 = CommonUtils.toBean(map, Criculate.class);
			
			Admin admin = (Admin) request.getSession().getAttribute("sessionAdmin");//得到当前修改用户
			criculate1.setAmend(admin.getName());
			//重新设置department
			//criculate1.setDepartment(departmentId);
			//更新
			int num = criculateService.criculateUpdate(id, criculate1);
			if(num > 0){
				//回显
				Criculate criculate = criculateService.criculateFind(id);
				request.setAttribute("criculate", criculate);
			}
			request.getRequestDispatcher("/pages/tables/criculate/criculateInformation.jsp").forward(request, response);
	}
	
	//打印
	public void print(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			
			//根据id查询所属分局
			String str  = request.getParameter("id");
			int id = Integer.parseInt(str);
			Criculate criculate = criculateService.criculateFind(id);
			request.setAttribute("criculate", criculate);
			request.getRequestDispatcher("/pages/tables/criculate/downloadCriculateInfo.jsp").forward(request, response);
	}
	
	//删除信息
	public void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			//删除信息
			String str = request.getParameter("id");
			int id;
			if(str != null && !str.trim().isEmpty()){
				try{
					id = Integer.parseInt(str);
					criculateService.delete(id);
				}catch(RuntimeException e){}
			}
			response.getWriter().print(1);
	}
	
	//得到token令牌
	private boolean isRepeatSubmit(HttpServletRequest request) {
        String client_token = request.getParameter("token");
        //1、如果用户提交的表单数据中没有token，则用户是重复提交了表单
        if(client_token==null){
            return true;
        }
        //取出存储在Session中的token
        String server_token = (String) request.getSession().getAttribute("tokenC");
        //2、如果当前用户的Session中不存在Token(令牌)，则用户是重复提交了表单
        if(server_token==null){
            return true;
       }
        //3、存储在Session中的Token(令牌)与表单提交的Token(令牌)不同，则用户是重复提交了表单
        if(!client_token.equals(server_token)){
            return true;
        }
        return false;
	}
}
