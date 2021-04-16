<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="fp.FpDAO" %> 
<%@ page import="vp.VpDAO" %>
<%@ page import="sp.SpDAO" %>
<%@ page import="jp.JpDAO" %>
<%@ page import="up.UpDAO" %>
<%@ page import="cart.CartDAO" %>
<%@ page import="user.UserDAO" %>
<%@ page import="cart.CartDAO" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>


<%
	ResultSet rs;
	String userID = null;
	String price = null;
	Connection conn = null;
	PreparedStatement pstmt = null;

	price = request.getParameter("index");
	Class.forName("com.mysql.jdbc.Driver");
	try{
		String dbURL = "jdbc:mysql://localhost:3306/jsp_ch05?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
		String dbID = "root";
		String dbPassword = "1234";		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		pstmt = conn.prepareStatement(
				"DELETE FROM cart WHERE price=?");
		pstmt.setString(1, price);
		pstmt.executeUpdate();
		out.println("<script>alert('삭제 완료.'); location.href='Cart.jsp';</script>");
	} catch (Exception e) {
		e.printStackTrace();
	}
%>

