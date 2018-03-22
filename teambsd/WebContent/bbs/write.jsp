<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "teambsd.bbs.BbsDao" %>
<%
	request.setCharacterEncoding("UTF-8");
	BbsDao bbsdao = new BbsDao();
	String content = request.getParameter("content");
	String id_user = "1";
	bbsdao.write(id_user, content);
    String redirectURL = "list.jsp";
    response.sendRedirect(redirectURL);
%>
