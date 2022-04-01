package controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.OrdersDAO;
import model.Cart;
import model.Orders;
import model.Product;

//chức năng lưu thông tin chi tiết đơn hàng và khách hàng vào datasource
/**
 * Servlet implementation class PayController
 */
@WebServlet("/PayController")
public class PayController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request,response);
	}
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.setContentType("text/html ; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		try {
			
			HttpSession session = request.getSession(true);
			if(session.getAttribute("product") == null) {
				
			}
			OrdersDAO dao = new OrdersDAO();
			Cart c = (Cart) session.getAttribute("product");
			
			String username = request.getParameter("name");
			String discount = request.getParameter("discount");
			String address = request.getParameter("address");
			Orders d = new Orders(username, 2 ,null, discount, address);
		
			dao.insertOrder(d,c);
			response.sendRedirect(request.getContextPath() + "/home");
		}catch(Exception ex) {
			response.getWriter().println(ex);
			ex.printStackTrace();
		}
	}

}
