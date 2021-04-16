<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="cart.CartDAO" %> 
<%@ page import="fp.FpDAO" %>
<%@ page import="vp.VpDAO" %>
<%@ page import="sp.SpDAO" %>
<%@ page import="up.UpDAO" %>
<%@ page import="jp.JpDAO" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<HTML>
<HEAD>
	<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>영정종 스토어</title>
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.15.2/css/all.css"
      integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu"
      crossorigin="anonymous"
    />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="./css/style.css" />
	<style>
      a {
        text-decoration: none;
        color: white;
      }
      a:visited {
        text-decoration: none;
      }
      a:hover {
        text-decoration: none;
      }
      a:focus {
        text-decoration: none;
      }
      a:hover,
      a:active {
        text-decoration: none;
      }
      .ab_mypage a{
        color: black;
      }
      .cart_table{
      	margin-left:auto;
      	margin-right:auto;
		width: 1200px;
		table-layout: fixed;
		
      }
      .rest_table{
      	padding-left: 200px;
      }
      .bottom-bar {
	    background-color: black;
	    height: 80px;
	    text-align: center;
	    padding-top: 10px;
	    font-size: 20px;
	    color: white;
	    margin-top: 200px;
	  }
	  .cart_head{
		text-align :center;
		font-size:150%;
		background-color: ivory;
		border-bottom: 2px solid rgb(194, 190, 165);
		border-top: 2px solid rgb(194, 190, 165);
	  }
	  .cart_body{
		text-align :center;
		border-bottom: 2px solid rgb(194, 190, 165);
	  }
	  .buy_btn {
	  	display: flex;
	  	justify-content: center;
	  	margin-top: 50px;
	  	margin-left: 550px;
	  	font-size: 50px;
	  }
	  .total_price {
	  	margin-left: 450px;
	  	margin-top: 300px;
	  	font-size: 40px;
	  }
    </style>
</HEAD>
<BODY>
	 <header class="px-3 py-2 bg-dark text-white">
      <div class="container1">
        <span><a href="index.jsp">(주) 못난 놈들</a></span>
        <ul class="nav justify-content-end">
          <li class="nav-item">
            <a class="nav-link" href="./service.jsp">고객센터</a>
          </li>
        </ul>
      </div>
    </header>

    <div class="px-3 py-2 border-bottom mb-3">
      <div class="">
        <form class="search-bar">
          <input type="search" class="form-control" placeholder="Search..." />
        </form>
		
        <div class="text-end">
        <%
		String userID=null;
		if(session.getAttribute("userID") != null){
			userID=(String)session.getAttribute("userID");
			%>
			<button type="button" class="btn btn-light text-dark me-2 login" onclick="location.href='logout.jsp'">
          	Log Out</button>
			<%
		}
		else{
			%>
			<button type="button" class="btn btn-light text-dark me-2 login" onclick="location.href='login.html'">
          	Login
          </button>
          <button type="button" class="btn btn-primary" onclick="location.href='register.html'">Sign-up</button>
			<%
		}
	%>
          
        </div>
      </div>
    </div>
    <div class="user-bar">
      <span>
      <%
		if(session.getAttribute("userID") != null){
			userID=(String)session.getAttribute("userID");
			%>
			<span>${userID}</span>님 안녕하세요!
			<%
		}
		else{
			%>
			비회원님 안녕하세요!
			<%
		}
	%></span>
      <span>
      <%
		if(session.getAttribute("userID") != null){
			userID=(String)session.getAttribute("userID");
			%>
			<span class="ab_mypage"><a href="./mypage.jsp">마이페이지</a></span>
			<%
		}
		else{
			%>
			<span class="ab_mypage"><a href="./login.html">마이페이지</a></span>
			<%
		}
	  %></span>
      <span><%
		if(session.getAttribute("userID") != null){
			userID=(String)session.getAttribute("userID");
			%>
			<span class="ab_mypage"><a href="./Cart.jsp">장바구니</a></span>
			<%
		}
		else{
			%>
			<span class="ab_mypage"><a href="./login.html">장바구니</a></span>
			<%
		}
	  %></span>
    </div>
	<%
		if(session.getAttribute("userID") != null){
			userID=(String)session.getAttribute("userID");
		}
		else{
			out.println("<script>alert('로그인이 필요합니다.'); history.back();</script>");
		}
	  %>

<% 
	FpDAO fpDAO = new FpDAO();
	VpDAO vpDAO = new VpDAO();
	SpDAO spDAO = new SpDAO();
	JpDAO jpDAO = new JpDAO();
	UpDAO upDAO = new UpDAO();
	CartDAO cartDAO = new CartDAO();
	ResultSet rs;
	
	int rows = cartDAO.GetCartcount(userID);

	int totalprice = 0;
	int count = 0;
	int index = 0;
	int i= 0;
	int j= 0;
	rs = cartDAO.BringCartData(userID);            // 데이터 베이스에서 board 테이블에 저장된 데이터를 가져옴
	
    String[] productid = new String[rows];
    String[] price = new String[rows];
    String[] tag = new String[rows];
    String[] img = new String[rows];
    String[] productname = new String[rows];
    
    while(rs.next())
    { 
    	productid[i] = rs.getString("productid");
        price[i] = rs.getString("price");
        tag[i] = rs.getString("tag");
        totalprice = totalprice + Integer.parseInt(price[i]);
        i++;
    }
    
    for(j=0; j<rows; j++){
    	switch(tag[j]) {
    	case "fp":
    		rs = fpDAO.GetlineFp(productid[j]);
    		
    		while(rs.next()) {
    			productname[j] = rs.getString("name");
    			img[j] = rs.getString("img");
    		}
    		break;
    	case "vp":
    		rs = vpDAO.GetlineVp(productid[j]);
    		
    		while(rs.next()) {
    			productname[j] = rs.getString("name");
    			img[j] = rs.getString("img");
    		}
    		break;
    	case "sp":
    		rs = spDAO.GetlineSp(productid[j]);
    		
    		while(rs.next()){
    			productname[j] = rs.getString("name");
    			img[j] = rs.getString("img");
    		}
    		break;
    	case "jp":
			rs = jpDAO.GetlineJp(productid[j]);
    		
    		while(rs.next()){
    			productname[j] = rs.getString("name");
    			img[j] = rs.getString("img");
    		}
    		break;
    	case "up":
    		rs = upDAO.GetlineUp(productid[j]);
    		
    		while(rs.next()) {
    			productname[j] = rs.getString("name");
    			img[j] = rs.getString("img");
    		}
    		break;
    }
 }
   %>
	<h2>구매내역</h2>
	<div class="cart_table">
		<table>
		
	      <colgroup>
	        <col width="10%" />
	        <col width="20%" />
	        <col width="20%" />
	        <col width="20%" />
	        <col width="10%" />
	      </colgroup>
		<thead>
		  <tr class="cart_head">
	           <th style="border-right: 1px solid rgb(194, 190, 165);">상품 key값</th>
	           <th>상품 이미지</th>
		       <th>상품정보</th>
		       <th>상품금액</th>
		</tr>
		</thead>
		<tbody>
		<%for(i=0; i<rows; i++){ %>	
	        <tr class="cart_body">
	          <td style="border-right: 1px solid rgb(194, 190, 165);"><%=productid[i] %></td>
	          <td><img src="<%=img[i]%>" width="320px" height="200px"></td>
	          <td><%=productname[i] %></td>
	          <td><%=price[i] %>원</td>
	        </tr> 
		 <%}%>
		</tbody>
		</table>
			<span class="total_price">총 가격 : <%=totalprice %>원</span>
		</div>
		
 <div>
      <section class="bottom-bar">
        2021 OpenSource Web-Software, Made by YYJ, KJH, KJS </br> @ Copyright 2021. 양영재. ALL RIGHTS RESERVED.
      </section>
    </div>