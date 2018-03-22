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

<div class="container">
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
	    	<li class="breadcrumb-item active" aria-current="page"><a href="list.jsp">BBS</a></li>
	    	<li class="breadcrumb-item" aria-current="page"><%= bbs.getSys_modified_date() %></li>
	  	</ol>
	</nav>
	
	<div class="card my-1">
		<div class="card-body" style="min-height:150px">
			<div class="row">
				<div class="col-2">id</div>
				<div class="col"><%=bbs.getId() %></div>
			</div>
			<div class="row">
				<div class="col-2">id_user</div>
				<div class="col"><%=bbs.getId_user() %></div>
			</div>
			<div class="row">
				<div class="col-2">content</div>
				<div class="col"><%=bbs.getContent() %></div>
			</div>
			<div class="row">
				<div class="col-2">sys_added_date</div>
				<div class="col"><%=bbs.getSys_added_date() %></div>
			</div>
			<div class="row">
				<div class="col-2">sys_modified_date</div>
				<div class="col"><%=bbs.getSys_modified_date() %></div>
			</div>
		</div>
		<div class="card-footer text-muted text-right">
			<a href="updateform.jsp?id=<%=bbs.getId()%>">
				<i class="fas fa-pen-square fa-lg mr-2"></i>
			</a>
			<a href="delete.jsp?id=<%=bbs.getId()%>">
				<button type="button" class="close" aria-label="Close">
		  			<span aria-hidden="true">&times;</span>
				</button>
			</a>
		</div>
	</div>	
</div>

<jsp:include page="/template/bottom.jsp"></jsp:include>	
