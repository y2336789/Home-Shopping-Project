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
	String findex = null;
	String fid = null;
	String fprice = null;
	String img =  null;
	try{
		if(session.getAttribute("userID") != null){
			userID=(String)session.getAttribute("userID");
		}
		findex = request.getParameter("index");
		tag = request.getParameter("tag");
		
		switch(tag) {
		
		case "fp":
			FpDAO fpDAO = new FpDAO();
			rs = fpDAO.GetlineFp(findex);
			while(rs.next()) {
				fid = rs.getString("id");
			    fprice = rs.getString("price");
				img = rs.getString("img");
			}
			break;
		case "vp":
			VpDAO vpDAO = new VpDAO();
			break;
		}
		
		CartDAO cartDAO = new CartDAO();
		
		cartDAO.InsertCart(userID, tag, fid, fprice);
		
		out.println("<script>alert('장바구니에 담겼습니다.'); location.href='Cart.jsp';</script>");
	} catch (Exception e) {
		e.printStackTrace();
	}
%>