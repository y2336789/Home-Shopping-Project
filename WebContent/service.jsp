<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
      #page {
        margin-left: auto;
        margin-right: auto;
        object-fit: cover;
        height: 200px;
      }
      .line {
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        font-size: 150%;
        text-align: center;
      }
      .content{
        text-align: center;
        text-decoration: black;
      }
      .table{
        margin-left: auto;
        margin-right: auto;
        width: 1200px;
        table-layout: fixed;
      }
      .bottom-bar {
		background-color: black;
		height: 80px;
		text-align: center;
		padding-top: 10px;
		font-size: 20px;
		color: white;
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
            <a class="nav-link" href="./service.html">고객센터</a>
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
    <div>
      <h1 style="text-align: center; margin-top: 50px;">공지사항</h><br>
    </div>

    <table class="table">
      <colgroup>
        <col width="20%" />
        <col width="80%" />
      </colgroup>
        <thead>
          <tr style="background-color: ivory;">
            <th class="line" scope="col">날짜</th>
            <th class="line" scope="col">제목</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="content"><p>2021.04.19</p></td>
            <td class="content" style = "cursor:pointer;" onClick = " location.href='notice01.jsp' " onMouseOver = " window.status = 'notice01.html' " onMouseOut = " window.status = '' ">
              <p>영정종 스토어 오픈 이벤트!</p>
            </td>
          </tr>
          <tr>
            <td class="content"><p>2021.04.18</p></td>
            <td class="content" style = "cursor:pointer;" onClick = " location.href='notice02.jsp' " onMouseOver = " window.status = 'notice02.html' " onMouseOut = " window.status = '' ">
            <p>영정종 스토어 오픈예정</p>
          </td>
          </tr>
        </tbody>
    </table>
    

    <div>
      <br><h1 style="text-align: center">FAQ</h><br>
    </div>
     <table class="table">
      <colgroup>
        <col width="20%" />
        <col width="80%" />
      </colgroup>
        <thead>
          <tr style="background-color: ivory;">
            <th class="line" scope="col">번호</th>
            <th class="line" scope="col">제목</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="content"><p>1</p></td>
            <td class="content" style = "cursor:pointer;" onClick = " location.href='FAQ01.jsp' " onMouseOver = " window.status = 'FAQ01.html' " onMouseOut = " window.status = '' ">
              <p><strong>Q.</strong> 배송 조회는 어디서 하나요?</p>
            </td>
          </tr>
          <tr>
            <td class="content"><p>2</p></td>
            <td class="content" style = "cursor:pointer;" onClick = " location.href='FAQ02.jsp' " onMouseOver = " window.status = 'FAQ02.html' " onMouseOut = " window.status = '' ">
              <p><strong>Q.</strong> 결제한 목록은 어디서 보나요?</p>
            </td>
          </tr>
          <tr>
            <td class="content"><p>3</p></td>
            <td class="content" style = "cursor:pointer;" onClick = " location.href='FAQ03.jsp' " onMouseOver = " window.status = 'FAQ03.html' " onMouseOut = " window.status = '' ">
              <p><strong>Q.</strong> 반품 신청은 어떻게 하나요?</p>
            </td>
          </tr>
          <tr>
            <td class="content"><p>4</p></td>
            <td class="content" style = "cursor:pointer;" onClick = " location.href='FAQ04.jsp' " onMouseOver = " window.status = 'FAQ04.html' " onMouseOut = " window.status = '' ">
              <p><strong>Q.</strong> 상품 배송은 얼마나 걸리나요?</p>
            </td>
          </tr>
        </tbody>
    </table>
    
    <div>
      <section class="bottom-bar">
        2021 OpenSource Web-Software, Made by YYJ, KJH, KJS </br> @ Copyright 2021. 양영재. ALL RIGHTS RESERVED.
      </section>
    </div>

    <script
      src="https://kit.fontawesome.com/0df657c80e.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
