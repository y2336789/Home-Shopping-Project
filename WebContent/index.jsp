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
	* {margin:0;padding:0;box-sizing:border-box;}
	ul, li {list-style:none;}
	
	
	.slidebox {max-width:800px;margin:0 auto;position:relative;}
	.slidebox .slidelist {position:relative;white-space:nowrap;font-size:0;overflow:hidden;}
	.slidebox .slidelist .slideitem {position:relative;display:inline-block;vertical-align:middle;background-color:#fff;width:100%;transition:all 1s;}
	.slidebox .slidelist .slideitem > a {display:block;width:auto;position:relative;}
	.slidebox .slidelist .slideitem > a img {max-width:100%;}
	
	.slidebox .slide-control [class*="control"] label {position:absolute;z-index:10;top:50%;transform:translateY(-50%);padding:20px;border-radius:50%;cursor:pointer;}
	.slidebox .slide-control [class*="control"] label.prev {left:-50px;background:#333 url('./img/left-arrow.png') center center / 50% no-repeat;}
	.slidebox .slide-control [class*="control"] label.next {right:-50px;background:#333 url('./img/right-arrow.png') center center / 50% no-repeat;}
	
	[name="slide"] {display:none;}
	#slide01:checked ~ .slidelist .slideitem {left:0;}
	#slide02:checked ~ .slidelist .slideitem {left:-100%;}
	#slide03:checked ~ .slidelist .slideitem {left:-200%;}
	#slide04:checked ~ .slidelist .slideitem {left:-305%;}
	
	.slide-control [class*="control"] {display:none;}
	#slide01:checked ~ .slide-control .control01 {display:block;}
	#slide02:checked ~ .slide-control .control02 {display:block;}
	#slide03:checked ~ .slide-control .control03 {display:block;}
	#slide04:checked ~ .slide-control .control04 {display:block;}
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
      body {
        background-color: #f7f7f7;
      }
      .bottom-bar {
	    background-color: black;
	    height: 80px;
	    text-align: center;
	    padding-top: 10px;
	    font-size: 20px;
	    color: white;
	  }
	  .up_bar {
	  	background-color: black;
	  	height: 50px;
	  }
	  .u_title {
	  	margin-left: 30px;
	  }
	  .u_title2 {
	  	margin-right: 20px;
	  }
	  .mc {
	  	margin-left: 200px;
	  }
	  .mc2 {
	  	margin-left: 200px;
	  }
	  .under_card2 {
	  	width: 420px;
	  	background-color: white;
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
			<button type="button" class="btn btn-light text-dark me-2 login" onclick="location.href='./login.html'">
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
    <div class="slidebox">
	<input type="radio" name="slide" id="slide01" checked>
	<input type="radio" name="slide" id="slide02">
	<input type="radio" name="slide" id="slide03">
	<input type="radio" name="slide" id="slide04">
	<ul class="slidelist">
		<li class="slideitem">
			<a><img src="./img/trademark.PNG" width="800" height="650"></a>
		</li>
		<li class="slideitem">
			<a><img src="./img/event2.PNG" width="800" height="650"></a>
		</li>
		<li class="slideitem">
			<a><img src="./img/event1.PNG" width="800" height="650"></a>
		</li>
		<li class="slideitem">
			<a><img src="./img/event3.PNG" width="800" height="650"></a>
		</li>
		
	</ul>
	<div class="slide-control">
		<div class="control01">
			<label for="slide04" class="prev"></label>
			<label for="slide02" class="next"></label>
		</div>
		<div class="control02">
			<label for="slide01" class="prev"></label>
			<label for="slide03" class="next"></label>
		</div>
		<div class="control03">
			<label for="slide02" class="prev"></label>
			<label for="slide04" class="next"></label>
		</div>
		<div class="control04">
			<label for="slide03" class="prev"></label>
			<label for="slide01" class="next"></label>
		</div>
	</div>
</div>
    <div class="up_bar"> </div>
    <h2 style="margin-top: 100px; font-size: 50px;">사고 싶은 품목을 누르세요!</h2>
    
    
    <div class="ct3">
    <div class="container py-5" id="custom-cards">
     
      <section class="sector1">
      <div class="row row-cols-3 align-items-stretch py-5">
        <div class="col">
          <div class="card card-cover">
            <div>
              <div class="fruit product">
                <a href="fruit.jsp"><img src="./img/fruit.PNG" /></a>
                <span>과일</span>
              </div>
            </div>
          </div>
        </div>
        <div>
          <div class="card card-cover">
            <div>
              <div class="vegetable product">
                <a href="vegetable.jsp"><img src="./img/vegetable.PNG" /></a>
                <span>채소</span>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card card-cover">
            <div>
              <div class="ugly-fruit product">
                <a href="ugly.jsp"><img src="./img/ugly.PNG" /></a>
                <span id="title">못난이 과일</span>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card card-cover mc2">
            <div>
              <div class="juice product under_card2">
                <a href="juice.jsp"><img src="./img/juice.JPG" /></a>
                <span class="u_title">주스</span>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card card-cover mc">
            <div>
              <div class="salad product under_card2">
                <a href="salad.jsp"><img src="./img/salad.JPG"/></a>
                <span class="u_title2">샐러드</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    </div>
  </div>
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
</body>
</html>