package cn.tslanpu.test.add.usemed.servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.tslanpu.test.add.usemed.domain.Usemed;
import cn.tslanpu.test.add.usemed.service.UsemedService;
import cn.tslanpu.test.admin.domain.Admin;
import cn.tslanpu.test.utils.BaseServlet;

public class UsemedServlet extends BaseServlet {

	private UsemedService usemedService = new UsemedService();
	//增加信息
	public void add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	         
			Usemed usemed = setBean(request, response);
			usemedService.add(usemed);
			request.setAttribute("success", "提交成功");
			request.getRequestDispatcher("/pages/tables/usemed/usemed.jsp").forward(request, response);
	}
	
	//查看详细信息
	public void infor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			
			//根据id查询所属分局
			String str  = request.getParameter("idU");
			int id = Integer.parseInt(str);
			Usemed usemed = usemedService.usemedFind(id);
			
			//保存当前页码
			String pageCode = request.getParameter("pageCode");
			request.setAttribute("pageCode", pageCode);
			
			//保存当前所属部门
			String name = request.getParameter("item");
			request.setAttribute("item", name);
			
			request.setAttribute("medical", usemed);
			request.getRequestDispatcher("/pages/tables/usemed/usemedInformation.jsp").forward(request, response);
	}
	
	//更新信息
	public void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			//判断返回的状态
			request.setAttribute("status", 2);
		
			/*
			 * 获取当前Id根据id查询及修改
			 */
			String str = request.getParameter("idM");
			int id = Integer.parseInt(str);
			
			Usemed usemed = setBean(request, response);
			
			//更新
			usemedService.usemedUpdate(id, usemed);
			
//			//回显
			Usemed usemed1 = usemedService.usemedFind(id);
			
			request.setAttribute("medical", usemed1);
			request.getRequestDispatcher("/pages/tables/usemed/usemedInformation.jsp").forward(request, response);
	}
	
	//打印
	public void print(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			//根据id查询所属分局
			String str  = request.getParameter("idU");
			int id = Integer.parseInt(str);
			Usemed usemed = usemedService.usemedFind(id);
			
			
			
            String[] names = usemed.getName().split(",");
			String[] manufacturers = usemed.getManufacturer().split(","); 
			String[] guiGes = usemed.getGuiGe().split(",");
			String[] priductCodes = usemed.getPriductCode().split(",");
			String[] times = usemed.getTime().split(",");
			String[] suppliers = usemed.getSupplier().split(",");
			
			int length = 0;
			if(length < names.length){
				length = names.length;
			}
			if(length < manufacturers.length){
				length = manufacturers.length;
			}
			if(length < guiGes.length){
				length = guiGes.length;
			}
			if(length < priductCodes.length){
				length = priductCodes.length;
			}
			if(length < times.length){
				length = times.length;
			}
			if(length < suppliers.length){
				length = suppliers.length;
			}
			String[] name = new String[length];
			System.arraycopy(names, 0, name, 0, names.length);
			String[] manufacturer = new String[length];
			System.arraycopy(manufacturers, 0, manufacturer, 0, manufacturers.length);
			String[] guiGe = new String[length];
			System.arraycopy(guiGes, 0, guiGe, 0, guiGes.length);
			String[] priductCode = new String[length];
			System.arraycopy(priductCodes, 0, priductCode, 0, priductCodes.length);
			String[] time = new String[length];
			System.arraycopy(times, 0, time, 0, times.length);
			String[] supplier = new String[length];
			System.arraycopy(suppliers, 0, supplier, 0, suppliers.length);
			
			String[] arrayStr = new String[length*6];
			
			int j = 0;
			for(int i = 0; i<length; i++){
				arrayStr[j++] = name[i];
				arrayStr[j++] = manufacturer[i];
				arrayStr[j++] = guiGe[i];
				arrayStr[j++] = priductCode[i];
				arrayStr[j++] = supplier[i];
				arrayStr[j++] = time[i];
			}
			
			request.setAttribute("array", arrayStr);
			request.setAttribute("medical", usemed);
			request.getRequestDispatcher("/pages/tables/usemed/downloadUsemedInformation.jsp").forward(request, response);
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
					usemedService.delete(id);
				}catch(RuntimeException e){}
			}
			response.getWriter().print(1);
	}
	
	@SuppressWarnings("unchecked")
	private Usemed setBean(HttpServletRequest request, HttpServletResponse response){
		
		Map map = request.getParameterMap();
		Usemed usemed = CommonUtils.toBean(map, Usemed.class);
		
		String name = "";
		String[] nameArr = request.getParameterValues("name");
		if(nameArr != null){
			for(int i = 0; i < nameArr.length; i++){
				name += nameArr[i];
				if(i != nameArr.length-1){
					name+= ",";
				}
			}
		}
		usemed.setName(name);
		
		String manufacturer = "";
		String[] manufacturerArr = request.getParameterValues("manufacturer");
		if(manufacturerArr != null){
			for(int i = 0; i < manufacturerArr.length; i++){
				manufacturer += manufacturerArr[i];
				if(i != manufacturerArr.length-1){
					manufacturer+= ",";
				}
			}
		}
		usemed.setManufacturer(manufacturer);
		
		String guiGe = "";
		String[] guiGeArr = request.getParameterValues("guiGe");
		if(guiGeArr != null){
			for(int i = 0; i < guiGeArr.length; i++){
				guiGe += guiGeArr[i];
				if(i != guiGeArr.length-1){
					guiGe+= ",";
				}
			}
		}
		usemed.setGuiGe(guiGe);
		
		String priductCode = "";
		String[] priductCodeArr = request.getParameterValues("priductCode");
		if(priductCodeArr != null){
			for(int i = 0; i < priductCodeArr.length; i++){
				priductCode += priductCodeArr[i];
				if(i != priductCodeArr.length-1){
					priductCode+= ",";
				}
			}
		}
		usemed.setPriductCode(priductCode);
		
		String supplier = "";
		String[] supplierArr = request.getParameterValues("supplier");
		if(supplierArr != null){
			for(int i = 0; i < supplierArr.length; i++){
				supplier += supplierArr[i];
				if(i != supplierArr.length-1){
					supplier+= ",";
				}
			}
		}
		usemed.setSupplier(supplier);
		
		String time = "";
		String[] timeArr = request.getParameterValues("time");
		if(timeArr != null){
			for(int i = 0; i < timeArr.length; i++){
				time += timeArr[i];
				if(i != timeArr.length-1){
					time+= ",";
				}
			}
		}
		usemed.setTime(time);
		
		Admin admin = (Admin) request.getSession().getAttribute("sessionAdmin");//得到当前修改用户
		usemed.setAmend(admin.getName());
		
		return usemed;
	}
}
