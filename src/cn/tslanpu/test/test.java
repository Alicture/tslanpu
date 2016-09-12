package cn.tslanpu.test;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;

public class test extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		((HttpServletResponse)response).addHeader("Access-Control-Allow-Origin", "*");
		
		Text text = new Text();
		
		String[] name = request.getParameterValues("nn");
		String nameArr = "";
		if(name != null){
			for(int i = 0; i<name.length; i++){
				nameArr +=name[i];
				if(i != name.length-1){
					nameArr += ",";
				}
			}
		}
		System.out.println(nameArr);
		Map<String, String[]> map = request.getParameterMap();
		Text textBean = CommonUtils.toBean(map, Text.class);
		textBean.setNn(nameArr);
		System.out.println(textBean.getNn());
		request.setAttribute("textBean", textBean);
		request.getRequestDispatcher("/test.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
