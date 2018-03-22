<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "teambsd.bbs.BbsDao" %>
<%@ page import = "teambsd.bbs.Bbs" %>
<%
	request.setCharacterEncoding("UTF-8");
	BbsDao bbsdao = new BbsDao();
	String id = request.getParameter("id");
	bbsdao.delete(id);
    String redirectURL = "list.jsp";
    response.sendRedirect(redirectURL);
%>
