package cn.tslanpu.test.admin.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.tslanpu.test.action.action.Action;
import cn.tslanpu.test.action.service.ActionService;
import cn.tslanpu.test.admin.domain.Admin;
import cn.tslanpu.test.admin.service.AdminService;
import cn.tslanpu.test.unit.Service.AddressService;
import cn.tslanpu.test.unit.Service.UnitService;
import cn.tslanpu.test.unit.domain.Address;
import cn.tslanpu.test.unit.domain.Unit;

public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AdminService adminService = new AdminService(); 
	private AddressService addressService = new AddressService();
	private ActionService actionService = new ActionService();
	private UnitService unitService = new UnitService();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			((HttpServletResponse)response).addHeader("Access-Control-Allow-Origin", "*");
			
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			Admin admin = adminService.query(username, password);
			if(!username.trim().isEmpty() && admin != null && admin.getUsername().equals(username) && !password.trim().isEmpty() && admin.getPassword().equals(password)){
				//保存用户到session	
				request.getSession().setAttribute("sessionAdmin", admin);
				
				//保存所有地址到session中
				List<Address> addressList = addressService.queryAddress();
				request.getSession().setAttribute("addressList", addressList);
				
				//
				//List<Action> listAction = actionService.queryAll();
				//request.getSession().setAttribute("listAction", listAction);
				
				
				
				/*
				 * 1.查询所有单位,监管单位
				 * 2.保存到session域
				 */
				List<Unit> unitList = unitService.query();
				request.getSession().setAttribute("unitList", unitList);
				
				//重定向到主页
				response.sendRedirect("/tslanpu/pages/index.jsp");
			}else{
				request.setAttribute("msg", "用户名或密码不正确");
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
