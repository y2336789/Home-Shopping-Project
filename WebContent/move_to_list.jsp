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
		out.println("<script>alert('주문이 완료되었습니다.'); location.href='plist.jsp';</script>");
%>