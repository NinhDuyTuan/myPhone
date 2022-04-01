package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.xdevapi.Statement;

import context.DBContext;
import model.Cart;
import model.Orders;
import model.Product;

//insert info of Order to data source, that including list of 
//products in cart (c) and infor of buyer in Orders 
public class OrdersDAO {
	public void insertOrder(Orders o, Cart c) throws Exception{
		try {
			DBContext db = new DBContext();
			Connection conn = db.getConnection();
			
			String sqlO = "INSERT INTO Orders (user_mail, order_status, order_date, order_discount_code, order_address) VALUES(?,?,?,?,?)";
			PreparedStatement stmt_Order = conn.prepareStatement(sqlO,  PreparedStatement.RETURN_GENERATED_KEYS);
			stmt_Order.setString(1,o.getUserMail());
			stmt_Order.setInt(2,o.getStatus());
			stmt_Order.setDate(3,o.getOrderDate());
			stmt_Order.setString(4,o.getDiscount());
			stmt_Order.setString(5,o.getAddress());
			stmt_Order.executeUpdate();
			ResultSet rs = stmt_Order.getGeneratedKeys();
			int orderID = 0;
			if (rs.next()) {
			orderID = rs.getInt(1);
			}
			
			String sqlC = "INSERT INTO  Orders_detail(order_id, product_id,amount_product,price_product) VALUES(?,?,?,?)";
			PreparedStatement stmt_Cart = conn.prepareStatement(sqlC);			
			for(Product p : c.getItems()) {
				stmt_Cart.setInt(1,orderID);
				stmt_Cart.setInt(2,p.getId());
				stmt_Cart.setDouble(3,p.getNumber());
				stmt_Cart.setFloat(4,p.getPrice());
				stmt_Cart.executeUpdate();
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
}
