%@ page language="java" contentType="text/html; charset=EUC-KR"
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
      .fruit_setting {
		  display: flex;
		  align-items: center;
		  font-size: 20px;
		  margin-top: 15px;
		  margin-left: 50px;
		}
		
		.fruit_setting2 {
		  display: flex;
		  align-items: center;
		  margin-left: 100px;
		  font-size: 20px;
		  margin-top: 15px;
		}
		
		.where {
		  margin-left: 115px;
		}
		
		.line {
		  display: flex;
		  width: 500px;
		  height: 45px;
		  border-top: solid gainsboro;
		  margin-top: 20px;
		  
		}
		
		.last {
		  margin-top: 15px;
		}
		
		.buttons {
		  margin-top: 30px;
		  display: flex;
		  justify-content: center;
		}
		
		.buttons button {
		  width: 150px;
		  font-size: 40px;
		  margin-left: 50px;
		}
		
		.recommend_book {
		  display: flex;
		  width: 90%;
		  margin-top: 50px;
		  margin-left: 20%;
		}
		
		.recommend_book__info {
		  display: flex;
		  flex-direction: column;
		  height: 550px;
		}
		.recommend_book__title {
		  display: flex;
		}
		
		.recommend_book__author {
		  color: rgba(0, 0, 0, 0.3);
		  margin-top: 5px;
		}
		
		.recommend_book__btn1 {
		  margin-top: 20px;
		}
		
		button {
		  border: none;
		  font-weight: bold;
		}
		.setting_sweet{
		  padding-left: 35px;
		}
		.ab_mypage a{
        color: black;
      }
    </style>
</HEAD>
<BODY>
	 <header class="px-3 py-2 bg-dark text-white">
      <div class="container1">
        <span><a href="./index.jsp">(주) 못난 놈들</a></span>
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
			<button type="button" class="btn btn-light text-dark me-2 login" onclick="location.href='./logout.jsp'">
          	Log Out</button>
			<%
		}
		else{
			%>
			<button type="button" class="btn btn-light text-dark me-2 login" onclick="location.href='./login.html'">
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
      <span>장바구니</span>
    </div>
    <!-- 로고 다시 만들기-->
    <!-- 상품 목록 화면 -->
    <div class="recommend_book">
      <div class="recommend_book__cover">
        <img
          class="img"
          src="./img/fruit/apples.jpg"
          onclick="select()"
          style="width: 600px; height: 600px"
        />
      </div>
      <div class="recommend_book__info">
        <div class="recommend_book__title"><h2>사과 10Kg</h2></div>
        <div class="recommend_book__author">
          	단단하고 맛있는 영양 넘치는 꿀사과
        </div>
        <div class="line">
          <span class="fruit_setting">배송구분</span>
          <span class="fruit_setting2">샛별배송 / 택배배송</span>
        </div>
        <div class="line">
          <span class="fruit_setting">원산지 </span>
          <span class="fruit_setting2 where"> 국내산</span>
        </div>
        <div class="line">
          <span class="fruit_setting">유통기한</span>
          <span class="fruit_setting2">최대한 빠르게 섭취 부탁드립니다.</span>
        </div>
        <div class="line">
          <span class="fruit_setting">포장타입</span>
          <span class="fruit_setting2">냉장 / 종이포장</span>
        </div>
        <div class="line">
          <span class="fruit_setting">당도</span>
          <span class="fruit_setting2 setting_sweet">13.4 brix 이상</span>
        </div>
        <div class="line">
          <span class="fruit_setting">가격</span>
          <span class="fruit_setting2 setting_sweet">60,000원</span>
        </div>
        <div class="last">
          <div class="buttons">
            <button class="btn_cart">장바구니</button>
            <button class="btn_pur">구매하기</button>
          </div>
        </div>
      </div>
    </div>

    <script
      src="https://kit.fontawesome.com/0df657c80e.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
