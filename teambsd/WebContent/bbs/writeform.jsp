<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:include page="/template/top.jsp">
	<jsp:param value="게시판" name="title"/>
</jsp:include>

<div class="container pb-2">
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
	    	<li class="breadcrumb-item active" aria-current="page"><a href="list.jsp">BBS</a></li>		
	    	<li class="breadcrumb-item active" aria-current="page">새글</li>
	  	</ol>
	</nav>
	<form action="write.jsp" method="POST">
		<textarea name="content" class="form-control" rows="10" placeholder="새글 쓰기"></textarea>
		<button class="btn btn-primary btn-block my-2" type="submit">OK</button>
	</form>
</div>

<jsp:include page="/template/bottom.jsp"></jsp:include>	
