package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import model.Product;

public class ListProductDAO {
	//return list of products by product name
	String Query = "Select  product_id, product_name, product_des, product_price, product_img_source, product_type, product_brand from Products";
	DBContext db = new DBContext();
	ResultSet rs = null;
	PreparedStatement stmt = null;
	public List<Product> search(String characters) throws Exception{
		List<Product> list= new ArrayList<Product>();
		Connection conn = db.getConnection();
		try {
			if(characters != null || characters != "") { 
				Query += " where product_name like ? ";
				stmt = conn.prepareStatement(Query);
				stmt.setString(1, "%"+ characters + "%");
				rs =  stmt.executeQuery();
				while(rs.next()) {	
					list.add(new Product(rs.getInt("product_id"),rs.getString("product_name"),rs.getString("product_des"),rs.getFloat("product_price"), rs.getString("product_img_source"),rs.getString("product_type"),rs.getString("product_brand")));
				}
			}else {
				stmt = conn.prepareStatement(Query);
				 rs =  stmt.executeQuery();
				while(rs.next()) {
					list.add(new Product(rs.getInt("product_id"),rs.getString("product_name"),rs.getString("product_des"),rs.getFloat("product_price"), rs.getString("product_img_source"),rs.getString("product_type"),rs.getString("product_brand")));
				}
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
	//get the product by id
	public Product getProduct(String id) throws Exception{
		Query += " where product_id = ?";
		try { 
			Connection conn = db.getConnection();
			PreparedStatement stmt = conn.prepareStatement(Query);
			stmt.setString(1, id);
			 rs =  stmt.executeQuery();
			while(rs.next()) {
				return new Product(rs.getInt("product_id"),rs.getString("product_name"),rs.getString("product_des"),rs.getFloat("product_price"), rs.getString("product_img_source"),rs.getString("product_type"),rs.getString("product_brand"));
			}
			}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	//return total number of Products
	public int getTotalProduct() {
		String query = "select count(*) from Products";
		try {
			Connection conn = db.getConnection();
			PreparedStatement stmt = conn.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				return rs.getInt(1);
			}
		}catch(Exception e) {
			
		}
		return 0;
	}
	
}

