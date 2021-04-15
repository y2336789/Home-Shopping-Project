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

      .table{
          margin-left: auto;
          margin-right: auto;
          width: 1200px;
          table-layout: fixed;
          text-align: center;
        }
        .line{
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        }
        .bottom-bar {
	background-color: black;
	height: 80px;
	text-align: center;
	padding-top: 10px;
	font-size: 20px;
	color: white;
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
          <button type="button" class="btn btn-primary" onclick="location.href='./register.html'">Sign-up</button>
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
      <br><h1 style="text-align: center">공지사항</h><br>
    </div>
    
    <table class="table">
        <colgroup>
            <col width="10%" />
            <col width="30%" />
            <col width="10%" />
            <col width="20%" />
            <col width="10%" />
            <col width="20%" />
          </colgroup>
        <thead>
            <tr class="line">
                <td style="border-right:1px solid black; background-color: ivory;">
                    <p>제목</p>
                </td>
                <td colspan="5"><P>영정종 스토어 오픈 이벤트!</P></td>
            </tr>
            <tr class="line">
                <td style="border-right:1px solid black; background-color: ivory;">작성자</td>
                <td style="border-right:1px solid black;">영정종 스토어</td>
                <td style="border-right:1px solid black; background-color: ivory;">작성일</td>
                <td>2021.04.18</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td colspan="6">
                    <br><p>안녕하세요!<strong> 영정종 스토어입니다!</strong></p><br>
                    <p>다가오는 4월 19일! 저희 영정종 스토어가 오픈 예정입니다!</p><br>
                    <p>저희 온라인 쇼핑몰은 농산물을 판매하는 업체이며,</p><br>
                    <p>과일과 채소뿐만 아니라 못난이 과일 또한 판매할 예정입니다.</p><br>
                    <p><strong>못난이 과일</strong>이란, 당도와 같은 상품성은 기존의 과일과 같지만</p><br>
                    <p>우박, 낙과 등의 이유로 과일의 모습이 이쁘지 못하여 상품의 가치가 떨어지는 과일입니다.</p><br>
                    <p>외관은 이쁘지 않지만, 맛은 다른 상품과 동일하다고 볼 수 있습니다.</p><br>
                    <p>따라서, 기존의 상품보다 저렴한 가격으로 같은 품질의 과일을 즐기실 수 있을 것입니다.</p><br>
                    <p>저희 영정종 스토어에 많은 관심 부탁드립니다.</p><br>
                    <p>2021년 4월 19일에 뵙도록 하겠습니다. 감사합니다!</p><br>
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
