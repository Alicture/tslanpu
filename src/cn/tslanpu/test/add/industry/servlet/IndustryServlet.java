package cn.tslanpu.test.add.industry.servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.tslanpu.test.add.health.domain.Health;
import cn.tslanpu.test.add.industry.domain.Industry;
import cn.tslanpu.test.add.industry.service.IndustryService;
import cn.tslanpu.test.admin.domain.Admin;
import cn.tslanpu.test.utils.BaseServlet;

public class IndustryServlet extends BaseServlet {

private IndustryService industryService = new IndustryService();
	
	//增加信息
	public void add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	         
			Industry industry = setBean(request, response);
			industryService.add(industry);
			request.setAttribute("success", "提交成功");
			request.getRequestDispatcher("/pages/tables/industry/industry.jsp").forward(request, response);
	}
	
	//查看详细信息
	public void infor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			
			//根据id查询所属分局
			String str  = request.getParameter("idI");
			int id = Integer.parseInt(str);
			Industry industry = industryService.industryFind(id);
			
			//保存当前页码
			String pageCode = request.getParameter("pageCode");
			request.setAttribute("pageCode", pageCode);
			
			//保存当前所属部门
			String name = request.getParameter("item");
			request.setAttribute("item", name);
			
			request.setAttribute("industry", industry);
			request.getRequestDispatcher("/pages/tables/industry/industryInformation.jsp").forward(request, response);
	}
	
	//更新信息
	public void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			//判断返回的状态
			request.setAttribute("status", 2);
		
			/*
			 * 获取当前Id根据id查询及修改
			 */
			String str = request.getParameter("idI");
			int id = Integer.parseInt(str);
			
			Industry industry = setBean(request, response);
			
			//更新
			industryService.industryUpdate(id, industry);
			
			//回显
			Industry industry1 = industryService.industryFind(id);
			
			request.setAttribute("industry", industry1);
			request.getRequestDispatcher("/pages/tables/industry/industryInformation.jsp").forward(request, response);
	}
	
	//打印
	public void print(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			
			//根据id查询所属分局
			String str  = request.getParameter("idI");
			int id = Integer.parseInt(str);
			System.out.println(id);
			Industry industry = industryService.industryFind(id);
            String[] arr = industry.getEveryOne().split(",");
			request.setAttribute("everyone", arr);
			request.setAttribute("industry", industry);
			request.getRequestDispatcher("/pages/tables/industry/downloadIndustryInformation.jsp").forward(request, response);
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
					industryService.delete(id);
				}catch(RuntimeException e){}
			}
			response.getWriter().print(1);
	}
	
	@SuppressWarnings("unchecked")
	private Industry setBean(HttpServletRequest request, HttpServletResponse response){
		
		Map map = request.getParameterMap();
		Industry industry = CommonUtils.toBean(map, Industry.class);
		
		String everyOne = "";
		String[] everyOneArr = request.getParameterValues("everyOne");
		if(everyOneArr != null){
			for(int i = 0; i < everyOneArr.length; i++){
				everyOne += everyOneArr[i];
				if(i != everyOneArr.length-1){
					everyOne+= ",";
				}
			}
		}
		industry.setEveryOne(everyOne);
		
		Admin admin = (Admin) request.getSession().getAttribute("sessionAdmin");//得到当前修改用户
		industry.setAmend(admin.getName());
		
		return industry;
	}
}
