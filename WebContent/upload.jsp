<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="fp.FpDAO" %> 
<%@ page import="vp.VpDAO" %>
<%@ page import="sp.SpDAO" %>
<%@ page import="jp.JpDAO" %>
<%@ page import="up.UpDAO" %>
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
		case "sp":
			SpDAO spDAO = new SpDAO();
			rs= spDAO.GetlineSp(index);
			while(rs.next()) {
				id = rs.getString("id");
				price = rs.getString("price");
				img = rs.getString("img");
			}
			break;
		case "jp":
			JpDAO jpDAO = new JpDAO();
			rs= jpDAO.GetlineJp(index);
			while(rs.next()) {
				id = rs.getString("id");
				price = rs.getString("price");
				img = rs.getString("img");	
			}
			break;
		case "up":
			UpDAO upDAO = new UpDAO();
			rs = upDAO.GetlineUp(index);
			while(rs.next()) {
				id = rs.getString("id");
				price = rs.getString("price");
				img = rs.getString("img");
			}
			break;
		}
		
		CartDAO cartDAO = new CartDAO();
		
		cartDAO.InsertCart(userID, tag, id, price);
		
		out.println("<script>alert('��ٱ��Ͽ� �����ϴ�.'); location.href='Cart.jsp';</script>");
	} catch (Exception e) {
		e.printStackTrace();
	}
%>