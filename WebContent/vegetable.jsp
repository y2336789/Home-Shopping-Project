<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="vp.VpDAO" %> 
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
        color: rgb(129, 125, 125);
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
      .bottom-bar {
      	margin-top: 100px;
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
    <div class="trademark">
      <img src="img/mark2.PNG" width="600" height="600" />
    </div>
    <div>
      <!-- 상품 목록 화면 -->
   	<% VpDAO vpDAO = new VpDAO();
    	ResultSet rs;
    	int i = 0, k = 0;
        int rows = vpDAO.GetVpcount();
    	int count = 0;
    	int index = 0;
    	rs = vpDAO.BringVpData();            // 데이터 베이스에서 board 테이블에 저장된 데이터를 가져옴
    	
    	String[] vpid = new String[rows];
        String[] vpName = new String[rows];
        String[] vpPrice = new String[rows];
        String[] vpPicture = new String[rows];
        
        while (rs.next())
        {
        	vpid[i] = rs.getString("id");
            vpName[i] = rs.getString("name");
            vpPrice[i] = rs.getString("price");
            vpPicture[i] = rs.getString("img");
            i++;
        }
  	%>
  	
  	<table class="table">
      <colgroup>
        <col width="20%" />
        <col width="30%" />
        <col width="20%" />
        <col width="30%" />
      </colgroup>
		<thead>
				<tr style="background-color: ivory;">
					<th class="line" scope="col">상품명</th>
					<th class="line" scope="col">이미지</th>
					<th class="line" scope="col">상품명</th>
					<th class="line" scope="col">이미지</th>
				</tr>
			</thead>
			<tbody>
			<%
			int a=0;
			for(i=0; i<(rows/2); i++){ %>	
			<tr>
			<% for(int j=0;j<2;j++) {%>
				<td class="textcontent"><a href="./vpform.jsp?index=<%=vpid[ a] %>&tag=vp"><%=vpName[a] %><br><%=vpPrice[a] %>원 </a></td>
				<td class="imgcontent"><a href="./vpform.jsp?index=<%=vpid[a] %>&tag=vp"><img src="<%=vpPicture[a] %>" width="320" height="200"/></a></td>
			<%
			a++;
			}%>
			</tr>
			<%}%>
 		</tbody>
  	</table>
  	<div>
      <section class="bottom-bar">
        2021 OpenSource Web-Software, Made by YYJ, KJH, KJS </br> @ Copyright 2021. 양영재. ALL RIGHTS RESERVED.
      </section>
    </div>
    </div>
    <script
      src="https://kit.fontawesome.com/0df657c80e.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
