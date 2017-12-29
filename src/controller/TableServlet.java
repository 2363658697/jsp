package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MyTableTest;
import model.PageTools;



public class TableServlet extends HttpServlet {

	private MyTableTest myTableTest = new MyTableTest();

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String str=request.getParameter("model");
		String curPage=request.getParameter("curPage");
		Integer curPageIndex=1;
		if(curPage!=null){
			curPageIndex=Integer.parseInt(curPage);
		}
		PageTools list=myTableTest.getTableList(str, curPageIndex);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/lesson7/query.jsp").forward(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}

}
