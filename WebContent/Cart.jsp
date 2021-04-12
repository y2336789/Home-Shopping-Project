<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="cart.CartDAO" %> 
<%@ page import="fp.FpDAO" %>
<%@ page import="vp.VpDAO" %>
<%@ page import="java.sql.ResultSet" %>


<%
	String userID = null;
		if(session.getAttribute("userID") != null){
			userID=(String)session.getAttribute("userID");
		}
		else{
			out.println("<script>alert('로그인이 필요합니다.'); history.back();</script>");
		}
	  %>

<% 
	FpDAO fpDAO = new FpDAO();
	CartDAO cartDAO = new CartDAO();
	ResultSet rs;
	
	int rows = cartDAO.GetCartcount(userID);

	int count = 0;
	int index = 0;
	int i= 0;
	int j= 0;
	rs = cartDAO.BringCartData(userID);            // 데이터 베이스에서 board 테이블에 저장된 데이터를 가져옴
	
    String[] productid = new String[rows];
    String[] price = new String[rows];
    String[] tag = new String[rows];
    String[] img = new String[rows];
    String[] productname = new String[rows];
    
    while (rs.next())
    {
    	productid[i] = rs.getString("productid");
        price[i] = rs.getString("price");
        tag[i] = rs.getString("tag");
        i++;
    }
    
    for(j=0; j<rows; j++){
    	switch(tag[j]) {
    	case "fp":
    		rs = fpDAO.GetlineFp(productid[j]);
    		
    		while(rs.next()) {
    			productname[j] = rs.getString("name");
    			img[j] = rs.getString("img");
    		}
    		break;
    	case "vp":
    		break;
    	}
    } 
   %>

	<%for(i=0; i<rows; i++){ %>
	  <div>
	  <%=productname[i] %> <%=price[i] %>원 <img src="<%=img[i]%>">
	  </div>
	  <%}%>