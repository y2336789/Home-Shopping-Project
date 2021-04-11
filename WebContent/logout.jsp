<%@ page contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>

<html>
  <head>
    <title>濡�洹몄���� 泥�由�</title>
  </head>
  <body>
    <% 
    if(session !=null)session.invalidate(); 
    response.sendRedirect("index.jsp"); 
    %>
  </body>
</html>
