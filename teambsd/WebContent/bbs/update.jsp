<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "teambsd.bbs.BbsDao" %>
<%
	request.setCharacterEncoding("UTF-8");
	BbsDao bbsdao = new BbsDao();
	String content = request.getParameter("content");
	String id = request.getParameter("id");
	bbsdao.update(id, content);
    String redirectURL = "detail.jsp?id=" + id;
    response.sendRedirect(redirectURL);
%>
