package cn.tslanpu.test.add.Criculate.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.tslanpu.test.utils.TokenProccessor;

public class CriculateFormServlet extends HttpServlet {
	private static final long serialVersionUID = 8532866479862891867L;

		public void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			String token = TokenProccessor.getInstance().makeToken();//创建令牌
			request.getSession().setAttribute("tokenC", token);
			response.sendRedirect("/tslanpu/pages/tables/criculate/criculate.jsp");
		}
		
		public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
			doGet(req, resp);
		}
}
