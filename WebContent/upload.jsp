<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="fp.FpDAO" %> 
<%@ page import="vp.VpDAO" %>
<%@ page import="user.UserDAO" %>
<%@ page import="cart.CartDAO" %>
<%@ page import="java.sql.ResultSet" %>


<%
	ResultSet rs;
	String userID = null;
	String tag = null;
	String index = null;
	String id = null;
	String price = null;
	String img =  null;
	try{
		if(session.getAttribute("userID") != null){
			userID=(String)session.getAttribute("userID");
		}
		index = request.getParameter("index");
		tag = request.getParameter("tag");
		
		switch(tag) {
		
		case "fp":
			FpDAO fpDAO = new FpDAO();
			rs = fpDAO.GetlineFp(index);
			while(rs.next()) {
				id = rs.getString("id");
			    price = rs.getString("price");
				img = rs.getString("img");
			}
			break;
		case "vp":
			VpDAO vpDAO = new VpDAO();
			rs = vpDAO.GetlineVp(index);
			while(rs.next()) {
				id = rs.getString("id");
				price = rs.getString("price");
				img = rs.getString("img");
			}
			break;
		}
		
		CartDAO cartDAO = new CartDAO();
		
		cartDAO.InsertCart(userID, tag, id, price);
		
		out.println("<script>alert('장바구니에 담겼습니다.'); location.href='Cart.jsp';</script>");
	} catch (Exception e) {
		e.printStackTrace();
	}
%>