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
      <span>장바구니</span>
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
                <td style="border-right:1px solid black;">
                    <p>제목</p>
                </td>
                <td colspan="5"><P>영정종 스토어 오픈 이벤트!</P></td>
            </tr>
            <tr class="line">
                <td style="border-right:1px solid black;">작성자</td>
                <td style="border-right:1px solid black;">영정종 스토어</td>
                <td style="border-right:1px solid black;">작성일</td>
                <td>2021.04.20</td>

            </tr>
        </thead>
        <tbody>
            <tr>
                <td colspan="6">
                    <br><p>안녕하세요!<strong> 영정종 스토어입니다!</strong></p><br>
                    <p>드디어 농산물 온라인 쇼핑몰 '영정종 스토어' 오픈을 했습니다~</p><br>
                    <p>오픈 이벤트로, 회원가입을 하시는 모든 분께 최대 30% 할인 쿠폰을 드리도록 하겠습니다!</p><br>
                    <p>농산물을 고객님의 집까지 신선하게 드릴 수 있는 영정종 스토어가 되도록 노력하겠습니다.</p><br>
                    <p>저희 쇼핑몰을 많이많이 이용해주세요~</p><br>
                    <p>감사합니다.</p><br>
                    <p></p><br>
                </td>
            </tr>
        </tbody>
    </table>
    <script
      src="https://kit.fontawesome.com/0df657c80e.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
