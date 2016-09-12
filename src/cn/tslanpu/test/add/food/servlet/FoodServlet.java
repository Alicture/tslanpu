package cn.tslanpu.test.add.food.servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.tslanpu.test.add.food.domain.Food;
import cn.tslanpu.test.add.food.service.FoodService;
import cn.tslanpu.test.add.industry.domain.Industry;
import cn.tslanpu.test.admin.domain.Admin;
import cn.tslanpu.test.utils.BaseServlet;
import cn.tslanpu.test.utils.TokenProccessor;

public class FoodServlet extends BaseServlet {
	
	private static final long serialVersionUID = 1L;
	private FoodService foodService = new FoodService();
	
	//增加信息
	public void add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			 boolean b = isRepeatSubmit(request);//判断用户是否是重复提交
	         if(b==true){
	        	 request.setAttribute("success", "请不要重复提交");
	        	 request.getRequestDispatcher("/pages/tables/food/food.jsp").forward(request, response);
	             return;
	         }
	         request.getSession().removeAttribute("tokenF");//移除session中的token
	         
	         String token = TokenProccessor.getInstance().makeToken();//重新创建创建令牌
	 		 request.getSession().setAttribute("tokenF", token);
	         
	 		 Food food = setBean(request, response);
			
			foodService.add(food);
			request.setAttribute("success", "提交成功");
			request.getRequestDispatcher("/pages/tables/food/food.jsp").forward(request, response);
	}
	
	//查看详细信息
	public void infor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			
			//根据id查询所属分局
			String str  = request.getParameter("idF");
			int id = Integer.parseInt(str);
			Food food = foodService.foodFind(id);
			
			//保存当前页码
			String pageCode = request.getParameter("pageCode");
			request.setAttribute("pageCode", pageCode);
			
			//保存当前所属部门
			String name = request.getParameter("item");
			request.setAttribute("item", name);
			
			request.setAttribute("food", food);
			request.getRequestDispatcher("/pages/tables/food/foodInformation.jsp").forward(request, response);
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
			
			Food food = setBean(request, response);
			
			//重新设置department
			//criculate1.setDepartment(departmentId);
			//更新
			foodService.foodUpdate(id, food);
			//回显
			Food food1 = foodService.foodFind(id);
			
			request.setAttribute("food", food1);
			request.getRequestDispatcher("/pages/tables/food/foodInformation.jsp").forward(request, response);
	}
	
	//打印
	public void print(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			
			//根据id查询所属分局
			String str  = request.getParameter("id");
			int id = Integer.parseInt(str);
			Food food = foodService.foodFind(id);
            String[] arrType = food.getType().split(",");
            String[] arrRemark = food.getRemark().split(",");
			request.setAttribute("arrType", arrType);
			request.setAttribute("food", food);
			request.setAttribute("arrRemark", arrRemark);
			request.getRequestDispatcher("/pages/tables/food/downloadFoodInfo.jsp").forward(request, response);
	}
	
	//删除信息
	public void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			//删除信息
			String str = request.getParameter("idF");
			int id;
			if(str != null && !str.trim().isEmpty()){
				try{
					id = Integer.parseInt(str);
					foodService.delete(id);
					System.out.println(id);
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
        String server_token = (String) request.getSession().getAttribute("tokenF");
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
	
	//得到FoodBean
	@SuppressWarnings("unchecked")
	private Food setBean(HttpServletRequest request, HttpServletResponse response){
		
		Map map = request.getParameterMap();
		Food food = CommonUtils.toBean(map, Food.class);
		
		String[] typeArray = request.getParameterValues("type");
		String type = "";
		if(typeArray != null){
			for(int i = 0; i<typeArray.length; i++){
				type +=typeArray[i];
				if(i != typeArray.length-1){
					type += ",";
				}
			}
		}
		food.setType(type);
		
		String[] remarkArray = request.getParameterValues("remark");
		String remark = "";
		if(remarkArray != null){
			for(int i = 0; i<remarkArray.length; i++){
				remark +=remarkArray[i];
				if(i != remarkArray.length-1){
					remark += ",";
				}
			}
		}
		food.setRemark(remark);
		
		//保存当前修改人
		Admin admin = (Admin) request.getSession().getAttribute("sessionAdmin");
		food.setAmend(admin.getName());
		
		return food;
	}
}
