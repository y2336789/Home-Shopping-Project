<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
    </style>
</HEAD>
<BODY>
	 <header class="px-3 py-2 bg-dark text-white">
      <div class="container1">
        <span><a href="index.jsp">(��) ���� ���</a></span>
        <ul class="nav justify-content-end">
          <li class="nav-item">
            <a class="nav-link" href="./service.jsp">������</a>
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
      <span>��ٱ���</span>
    </div>
    <div class="trademark">
      <img src="img/trademark.PNG" width="400" height="200" />
    </div>
    <h2>��� ���� ǰ���� ��������!</h2>
    <div class="ct3">
    <div class="container py-5" id="custom-cards">
     
      <section class="sector1">
      <div class="row row-cols-3 align-items-stretch py-5">
        <div class="col">
          <div class="card card-cover">
            <div>
              <div class="fruit product">
                <a href="fruit.jsp"><img src="./img/fruit.PNG" /></a>
                <span>����</span>
              </div>
            </div>
          </div>
        </div>
        <div>
          <div class="card card-cover">
            <div>
              <div class="vegetable product">
                <a href="vegetable.jsp"><img src="./img/vegetable.PNG" /></a>
                <span>ä��</span>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card card-cover">
            <div>
              <div class="ugly-fruit product">
                <a href="ugly-fruit.html"><img src="./img/ugly.PNG" /></a>
                <span id="title">������ ����</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    </div>
  </div>
    </div>
    <script
      src="https://kit.fontawesome.com/0df657c80e.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
</body>
</html>