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
      #page {
        margin-top: 100px;
        margin-left: auto;
        margin-right: auto;
        object-fit: cover;
        height: 200px;
      }
      .line {
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        font-size: 200%;
        text-align: center;
      }
      #qna {
        margin-left: auto;
        margin-right: auto;
        width: 1200px;
        table-layout: fixed
      }
      #headline{
          background-color:ivory;
      }
      #request_btn {
      	position: absolute;
  	    left: 47%;
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
    <table id="page">
      <tbody>
        <tr>
          <td>
            <img
              src="./img/mypage/buy.jpg"
              style="width: 100%; height: 75%"
            /><br />
            <p style="text-align: center; font-size: 150%">
              <strong>0</strong>��
            </p>
          </td>

          <td>
            <img
              src="./img/mypage/deli.jpg"
              style="width: 100%; height: 75%"
            /><br />
            <p style="text-align: center; font-size: 150%">
              <strong>0</strong>��
            </p>
          </td>

          <td>
            <img
              src="./img/mypage/clear.jpg"
              style="width: 100%; height: 75%"
            /><br />
            <p style="text-align: center; font-size: 150%">
              <strong>0</strong>��
            </p>
          </td>
        </tr>
      </tbody>
    </table>
    <div>
      <br><h1 style="text-align: center;">1:1 ����</h1>
    </div>

    <table id="qna">
      <tbody>
        <colgroup>
          <col width="20%" />
          <col width="40%" />
          <col width="10%" />
          <col width="20%" />
          <col width="20%" />
        </colgroup>
        <tr id="headline">
          <th class="line" scope="col">���� ����</th>
          <th class="line" scope="col">����</th>
          <th class="line" scope="col">�ֹ���ȣ</th>
          <th class="line" scope="col">�ۼ���</th>
          <th class="line" scope="col">ó�� ����</th>
        </tr>
      </tbody>
    </table>

    <p style="font-size: 150%; text-align: center;">
        <br><span>��ϵ� 1:1���ǰ� �����ϴ�.</span><br>
    </p>
    
    <span style="float: right; margin-right: 100px; margin-bottom: 100px; margin-top: 30px;">
      <button id="request_btn" type="button" style="font-size: 30px;" onclick="alert('�غ����� ���� �Դϴ�.')" >�����ϱ�</button>
    </span>

    

    <script
      src="https://kit.fontawesome.com/0df657c80e.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
