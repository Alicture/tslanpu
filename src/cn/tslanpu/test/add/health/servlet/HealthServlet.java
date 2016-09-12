package cn.tslanpu.test.add.health.servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.tslanpu.test.add.Criculate.domain.Criculate;
import cn.tslanpu.test.add.health.domain.Health;
import cn.tslanpu.test.add.health.service.HealthService;
import cn.tslanpu.test.add.industry.domain.Industry;
import cn.tslanpu.test.add.production.domain.Production;
import cn.tslanpu.test.admin.domain.Admin;
import cn.tslanpu.test.utils.BaseServlet;

public class HealthServlet extends BaseServlet{
	
	private static final long serialVersionUID = 1L;
	private HealthService healthService = new HealthService();
	
	//增加信息
	public void add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	         
			Health health = setBean(request, response);
			healthService.add(health);
			request.setAttribute("success", "提交成功");
			request.getRequestDispatcher("/pages/tables/health/health.jsp").forward(request, response);
	}
	
	//查看详细信息
	public void infor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			
			//根据id查询所属分局
			String str  = request.getParameter("idH");
			int id = Integer.parseInt(str);
			Health health = healthService.healthFind(id);
			
			//保存当前页码
			String pageCode = request.getParameter("pageCode");
			request.setAttribute("pageCode", pageCode);
			
			//保存当前所属部门
			String name = request.getParameter("item");
			request.setAttribute("item", name);
			
			request.setAttribute("health", health);
			request.getRequestDispatcher("/pages/tables/health/healthInformation.jsp").forward(request, response);
	}
	
	//更新信息
	public void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			//判断返回的状态
			request.setAttribute("status", 2);
		
			/*
			 * 获取当前Id根据id查询及修改
			 */
			String str = request.getParameter("idH");
			int id = Integer.parseInt(str);
			
			Health health = setBean(request, response);
			
			//更新
			healthService.healthUpdate(id, health);
			
			//回显
			Health health1 = healthService.healthFind(id);
			
			request.setAttribute("health", health1);
			request.getRequestDispatcher("/pages/tables/health/healthInformation.jsp").forward(request, response);
	}
	
	//打印
	public void print(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			
			//根据id查询所属分局
			String str  = request.getParameter("id");
			int id = Integer.parseInt(str);
			Health health = healthService.healthFind(id);
            String[] arrManage = health.getManage().split(",");
            String[] arrJyType = health.getJyType().split(",");
            request.setAttribute("arrJyType", arrJyType);
			request.setAttribute("arrManage", arrManage);
			request.setAttribute("health", health);
			request.getRequestDispatcher("/pages/tables/health/downloadHealthInfo.jsp").forward(request, response);
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
					healthService.delete(id);
				}catch(RuntimeException e){}
			}
			response.getWriter().print(1);
	}
	
	@SuppressWarnings("unchecked")
	private Health setBean(HttpServletRequest request, HttpServletResponse response){
		
		Map map = request.getParameterMap();
		Health health = CommonUtils.toBean(map, Health.class);
		
		String jyType = "";
		String[] jyTypeArr = request.getParameterValues("jyType");
		if(jyTypeArr != null){
			for(int i = 0; i < jyTypeArr.length; i++){
				jyType += jyTypeArr[i];
				if(i != jyTypeArr.length-1){
					jyType+= ",";
				}
			}
		}
		health.setJyType(jyType);
		
		String manage = "";
		String[] manageArr = request.getParameterValues("manage");
		if(manageArr != null){
			for(int i = 0; i < manageArr.length; i++){
				manage += manageArr[i];
				if(i != manageArr.length-1){
					manage+= ",";
				}
			}
		}
		health.setManage(manage);
		
		Admin admin = (Admin) request.getSession().getAttribute("sessionAdmin");//得到当前修改用户
		health.setAmend(admin.getName());
		
		return health;
	}
}
