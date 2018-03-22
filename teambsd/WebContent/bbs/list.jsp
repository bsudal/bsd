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

<div class="container">
	<div class="row bg-secondary my-3">
	
	<%
		for(Bbs bbs : list) {
	%>
			<div class="col-2"><%=bbs.getId() %>	</div>
			<div class="col-2"><%=bbs.getId_user() %>	</div>
			<div class="col"><a href="detail.jsp"><%=bbs.getContent() %></a>	</div>
	<% 
		}
	%>
	</div>
	<div class="row">
		<div class="col">글 개수</div>
		<div class="col"><%=list.size() %></div>
	</div>

</div>

<jsp:include page="/template/bottom.jsp"></jsp:include>	
