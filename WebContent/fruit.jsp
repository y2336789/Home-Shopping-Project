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
      <span>��ٱ���</span>
    </div>
    <div class="trademark">
      <img src="img/trademark.PNG" width="400" height="200" />
    </div>
    <!-- ��ǰ ��� ȭ�� -->
    <table id="Goods">
        <tbody>
          <tr>
            <td>
              <div class="row" onmouseover="OnMouseIn(this)" onmouseout="OnMouseOut(this)" style="">
                <span id="slabel">1</span><br>
                <a href="./apple.jsp"><img class="img" src="img/fruit/apples.jpg" id="1" onclick="select()" style="width:100%; height:75%;"></a><br>
                <span>��� 5Kg<br>30,000��</span>
              </div>
            </td>
            <td>
              <div class="row" onmouseover="OnMouseIn(this)" onmouseout="OnMouseOut(this)" style="">
                <span id="slabel">2</span><br>
                <a href="./apple10.jsp"><img class="img" src="img/fruit/apples.jpg" id="2" onclick="select()" style="width:100%; height:75%;"></a><br>
                <span>��� 10Kg<br>60,000��</span>
              </div>
            </td>
            <td>
              <div class="row" onmouseover="OnMouseIn(this)" onmouseout="OnMouseOut(this)" style="">
                <span id="slabel">3</span><br>
                <a href="./peach.jsp"><img class="img" src="img/fruit/peach.jpg" id="3" onclick="select()" style="width:100%; height:75%;"></a><br>
                <span>������ 1Kg<br>25,000��</span>
              </div>
            </td>
            <td><div class="row" onmouseover="OnMouseIn(this)" onmouseout="OnMouseOut(this)" style="">
              <span id="slabel">4</span><br>
              <a href="./peach3.jsp"><img class="img" src="img/fruit/peach.jpg" id="4" onclick="select()" style="width:100%; height:75%;"></a><br>
              <span>������ 3Kg<br>50,000��</span>
            </div>
          </td>
        </tr>
        <tr>
          <td>
            <div class="row" onmouseover="OnMouseIn(this)" onmouseout="OnMouseOut(this)" style="">
              <span id="slabel">5</span><br>
              <a href="./grape.jsp"><img class="img" src="img/fruit/grape.jpg" id="5" onclick="select()" style="width:100%; height:75%;"></a><br>
              <span>���� 2Kg<br>30,000��</span>
            </div>
          </td>
          <td>
            <div class="row" onmouseover="OnMouseIn(this)" onmouseout="OnMouseOut(this)" style="">
              <span id="slabel">6</span><br>
              <a href="./grape4.jsp"><img class="img" src="img/fruit/grape.jpg" id="6" onclick="select()" style="width:100%; height:75%;"></a><br>
              <span>���� 4Kg<br>35,000��</span>
            </div>
          </td>
          <td>
            <div class="row" onmouseover="OnMouseIn(this)" onmouseout="OnMouseOut(this)" style="">
              <span id="slabel">7</span><br>
              <img class="img" src="img/fruit/tangerine.jpg" id="7" onclick="select()" style="width:100%; height:75%;"><br>
              <span>�� 3Kg<br>20,000��</span>
            </div>
          </td>
          <td>
            <div class="row" onmouseover="OnMouseIn(this)" onmouseout="OnMouseOut(this)" style="">
              <span id="slabel">8</span><br>
              <img class="img" src="img/fruit/tangerine.jpg" id="8" onclick="select()" style="width:100%; height:75%;"><br>
              <span>�� 5Kg<br>30,000��</span>
            </div>
          </td>
        </tr>
        <tr>
          <td>
            <div class="row" onmouseover="OnMouseIn(this)" onmouseout="OnMouseOut(this)">
              <span id="slabel">9</span><br>
              <img class="img" src="img/fruit/kiwi.jpg" id="9" onclick="select()" style="width:100%; height:75%;"><br>
              <span>Ű�� 2Kg<br>20,000��</span>
            </div>
          </td>
          <td>
            <div class="row" onmouseover="OnMouseIn(this)" onmouseout="OnMouseOut(this)">
              <span id="slabel">10</span><br>
              <img class="img" src="img/fruit/kiwi.jpg" id="10" onclick="select()" style="width:100%; height:75%;"><br>
              <span>Ű�� 5Kg<br>45,000��</span>
            </div>
          </td>
          <td>
            <div class="row" onmouseover="OnMouseIn(this)" onmouseout="OnMouseOut(this)" style="">
              <span id="slabel">11</span><br>
              <img class="img" src="img/fruit/watermelon.jpg" id="11" onclick="select()" style="width:100%; height:75%;"><br>
              <span>���� 1��<br>20,000��</span>
            </div>
          </td>
          <td>
            <div class="row" onmouseover="OnMouseIn(this)" onmouseout="OnMouseOut(this)">
              <span id="slabel">12</span><br>
              <img class="img" src="img/fruit/watermelon.jpg" id="12" onclick="select()" style="width:100%; height:75%;"><br>
              <span>���� 2��<br>40,000��</span>
            </div>
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
