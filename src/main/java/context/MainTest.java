package context;

import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.http.HttpServlet;

import dao.ListProductDAO;

public class MainTest{
	public static void main(String[] args) {
		ListProductDAO lp = new ListProductDAO();
		try {
			lp.getProduct("3");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		}
	}


