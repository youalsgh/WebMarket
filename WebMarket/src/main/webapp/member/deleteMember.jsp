<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../dbconn.jsp" %>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		PreparedStatement pstmt = null;
		
		String sql = "delete from member where id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, sessionId);
		pstmt.executeUpdate();
		
		session.invalidate();
		response.sendRedirect("resultMember.jsp");
		
		if(pstmt != null)
			pstmt.close();
		if(conn != null)
			conn.close();
	%>
</body>
</html>