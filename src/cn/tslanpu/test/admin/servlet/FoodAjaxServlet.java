package cn.tslanpu.test.admin.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.tslanpu.test.add.food.dao.FoodDao;

import cn.tslanpu.test.add.food.domain.Food;

/**
 * Servlet implementation class FoodAjaxServlet
 */
@WebServlet("/FoodAjaxServlet")
public class FoodAjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FoodAjaxServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/xml; charset=utf-8"); 

		    PrintWriter out = response.getWriter(); 

		    String str;
		    Integer id;
			FoodDao dao = new FoodDao();
			Food food;
			try
			{
				food = dao.qynameFind();
				str = food.getQyname();
				id = food.getId();
				System.out.println(str);
				out.println(str); 
			} catch (SQLException e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
				
		
		   
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
