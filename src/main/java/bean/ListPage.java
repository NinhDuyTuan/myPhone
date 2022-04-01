package bean;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.product.ListController;
import dao.ListProductDAO;
import model.Product;

/**
 * Servlet implementation class ListPage
 */
@WebServlet("/ListPage")
public class ListPage extends HttpServlet {
	
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		ListProductDAO dao = new ListProductDAO();
		int count = dao.getTotalProduct();//lấy tổng số trang
		int endPage = count/8;
		if(count % 8 != 0) {endPage++;}
		request.setAttribute("endPage", endPage);
		RequestDispatcher rd = request.getRequestDispatcher("web/home.jsp");
		rd.forward(request, response);
		}
		
}
