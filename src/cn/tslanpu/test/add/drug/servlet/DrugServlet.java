package cn.tslanpu.test.add.drug.servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;

import cn.tslanpu.test.add.drug.domain.Drug;
import cn.tslanpu.test.add.drug.service.DrugService;

import cn.tslanpu.test.utils.BaseServlet;

public class DrugServlet extends BaseServlet {
	
	private static final long serialVersionUID = 5540405276170726089L;
	private DrugService drugService=new DrugService();
	
	//插入信息
	public void add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, Exception {
		Map map = request.getParameterMap();
		Drug drug = CommonUtils.toBean(map, Drug.class);
		arrToStr(request, response ,drug);
		drugService.add(drug);
		request.setAttribute("success", "提交成功");
		request.getRequestDispatcher("/pages/tables/drug/drug.jsp").forward(request, response);
	}
	
	//更新信息
	public void update(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		//判断返回的状态
		request.setAttribute("status", 2);
		Map map = request.getParameterMap();
		Drug drug = CommonUtils.toBean(map, Drug.class);
		arrToStr(request, response ,drug);
		//获取当前Id根据id查询及修改
		drug.setId(Integer.parseInt(request.getParameter("idD")));
		//更新
		drugService.Update(drug);
		request.setAttribute("drug", drug);
		request.getRequestDispatcher("/pages/tables/drug/drugInformation.jsp").forward(request, response);
	}
		
	//删除信息
	public void delete(HttpServletRequest request, HttpServletResponse response)
					throws ServletException, IOException {
		//删除信息
		String str = request.getParameter("idD");
		
		if(str != null && !str.trim().isEmpty()){
			try{
				
				drugService.delete(Integer.parseInt(str));
			}catch(RuntimeException e){}
		}
		response.getWriter().print(1);
	}
	
	//打印
	public void print(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//根据id查询所属分局
		String str  = request.getParameter("idD");
		int id = Integer.parseInt(str);
		Drug drug = drugService.drugFind(id);
        String[] arr = drug.getJyrange().split(",");
		request.setAttribute("jyrange", arr);
		request.setAttribute("drug", drug);
		request.getRequestDispatcher("/pages/tables/drug/downloadDrugInformation.jsp").forward(request, response);
	}
	
	//查看详细信息
	public void infor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//根据id查询所属分局
		String str  = request.getParameter("idD");
		int id = Integer.parseInt(str);
		Drug drug =drugService.drugFind(id);
		
		//保存当前页码
		String pageCode = request.getParameter("pageCode");
		request.setAttribute("pageCode", pageCode);
		
		//保存当前所属部门
		String name = request.getParameter("item");
		request.setAttribute("item", name);
		
		request.setAttribute("drug", drug);
		request.getRequestDispatcher("/pages/tables/drug/drugInformation.jsp").forward(request, response);
	}
	
	private void arrToStr(HttpServletRequest request, HttpServletResponse response, Drug drug){
		
		String jyrange="";
		
		String [] Range=request.getParameterValues("jyrange");
		
		if(Range!=null){
			for(int i=0;i<Range.length;i++){
				jyrange+=Range[i];
				if(i!=Range.length-1)
					jyrange+=",";
			}
		}
		
		drug.setJyrange(jyrange);
	}
}
