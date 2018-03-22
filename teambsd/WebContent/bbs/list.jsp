<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>   
<%@ page import = "teambsd.bbs.BbsDao" %>
<%@ page import = "teambsd.bbs.Bbs" %>
<%
	BbsDao bbsdao = new BbsDao();
	ArrayList<Bbs> list = bbsdao.list(); 
%>
<% request.setCharacterEncoding("UTF-8"); %>


<jsp:include page="/template/top.jsp">
	<jsp:param value="게시판" name="title"/>
</jsp:include>

<div class="container pb-2">
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
	    	<li class="breadcrumb-item active" aria-current="page">BBS</li>
	  	</ol>
	</nav>
	<%
		for(Bbs bbs : list) {
	%>
	<div class="card my-1">
		<div class="card-body" style="height:150px;">
			<a href="delete.jsp?id=<%=bbs.getId()%>">
				<button type="button" class="close" aria-label="Close">
		  			<span aria-hidden="true">&times;</span>
				</button>
			</a>
			<a href="detail.jsp?id=<%= bbs.getId() %>"><%= bbs.getContent() %></a>
		</div>
		<div class="card-body text-right"><%= bbs.getSys_modified_date() %></div>
	</div>	
	<% 
		}
	%>
</div>

<div style="position: fixed; right: 15%; bottom: 100px;">
	<a href="writeform.jsp" class="btn btn-danger" id="main" style="border-radius: 50%;padding: .500rem;">
		<i class="fas fa-pen-square fa-lg"></i>        
	</a>
</div>

<jsp:include page="/template/bottom.jsp"></jsp:include>	
