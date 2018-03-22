<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "teambsd.bbs.BbsDao" %>
<%@ page import = "teambsd.bbs.Bbs" %>
<%
	request.setCharacterEncoding("UTF-8");
	BbsDao bbsdao = new BbsDao();
	String id = request.getParameter("id");
	Bbs bbs = bbsdao.detail(id);
%>
<jsp:include page="/template/top.jsp">
	<jsp:param value="게시판" name="title"/>
</jsp:include>

<div class="container pb-2">
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
	    	<li class="breadcrumb-item active" aria-current="page"><a href="list.jsp">BBS</a></li>		
	    	<li class="breadcrumb-item active" aria-current="page"><%= bbs.getSys_modified_date() %> </li>
	  	</ol>
	</nav>
	<form action="update.jsp" method="POST">
		<input type="hidden" name="id" value="<%= bbs.getId() %>"/>
		<textarea name="content" class="form-control" rows="10"><%= bbs.getContent() %></textarea>
		<button class="btn btn-primary btn-block my-2" type="submit">OK</button>
	</form>
</div>

<jsp:include page="/template/bottom.jsp"></jsp:include>	
