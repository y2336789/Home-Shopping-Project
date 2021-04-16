<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="sp.SpDAO" %> 
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<HTML>
<HEAD>
	<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>������ �����</title>
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
        <span><a href="index.jsp">(��) ���� ���</a></span>
        <ul class="nav justify-content-end">
          <li class="nav-item">
            <a class="nav-link" href="./service.jsp">��������</a>
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
			<span>${userID}</span>�� �ȳ��ϼ���!
			<%
		}
		else{
			%>
			��ȸ���� �ȳ��ϼ���!
			<%
		}
	%></span>
      <span>
      <%
		if(session.getAttribute("userID") != null){
			userID=(String)session.getAttribute("userID");
			%>
			<span class="ab_mypage"><a href="./mypage.jsp">����������</a></span>
			<%
		}
		else{
			%>
			<span class="ab_mypage"><a href="./login.html">����������</a></span>
			<%
		}
	  %></span>
      <span><%
		if(session.getAttribute("userID") != null){
			userID=(String)session.getAttribute("userID");
			%>
			<span class="ab_mypage"><a href="./Cart.jsp">��ٱ���</a></span>
			<%
		}
		else{
			%>
			<span class="ab_mypage"><a href="./login.html">��ٱ���</a></span>
			<%
		}
	  %></span>
    </div>
    <div class="trademark">
      <img src="img/mark5.PNG" width="600" height="600" />
    </div>
    <div>
      <!-- ��ǰ ��� ȭ�� -->
   	<% SpDAO spDAO = new SpDAO();
    	ResultSet rs;
    	int i = 0, k = 0;
        int rows = spDAO.GetSpcount();
    	int count = 0;
    	int index = 0;
    	rs = spDAO.BringSpData();            // ������ ���̽����� board ���̺��� ����� �����͸� ������
    	
    	String[] spid = new String[rows];
        String[] spName = new String[rows];
        String[] spPrice = new String[rows];
        String[] spPicture = new String[rows];
        
        while (rs.next())
        {
        	spid[i] = rs.getString("id");
            spName[i] = rs.getString("name");
            spPrice[i] = rs.getString("price");
            spPicture[i] = rs.getString("img");
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
					<th class="line" scope="col">��ǰ��</th>
					<th class="line" scope="col">�̹���</th>
					<th class="line" scope="col">��ǰ��</th>
					<th class="line" scope="col">�̹���</th>
				</tr>
			</thead>
			<tbody>
			<%
			int a=0;
			for(i=0; i<(rows/2); i++){ %>
			<tr>
			<% for(int j=0;j<2;j++) {%>
				<td class="textcontent"><a href="./spform.jsp?index=<%=spid[a] %>&tag=sp"><%=spName[a] %><br><%=spPrice[a] %>�� </a></td>
				<td class="imgcontent"><a href="./spform.jsp?index=<%=spid[a] %>&tag=sp"><img src="<%=spPicture[a] %>" width="320" height="200"/></a></td>
			<%
			a++;
			}%>
			</tr>
			<%}%>
 		</tbody>
  	</table>
  	<div>
      <section class="bottom-bar">
        2021 OpenSource Web-Software, Made by YYJ, KJH, KJS </br> @ Copyright 2021. �翵��. ALL RIGHTS RESERVED.
      </section>
    </div>
    </div>
    <script
      src="https://kit.fontawesome.com/0df657c80e.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>