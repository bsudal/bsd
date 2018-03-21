<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:include page="/template/top.jsp">
	<jsp:param value="예제1" name="title"/>
</jsp:include>

	<div class="container">

		<div class="row bg-secondary text-white">
			<div class="col"><p class="font-weight-bold text-left"><h5 class="my-3">예제1</h5></p></div>
		</div>

		<div class="row my-2">
			<div class="col-2 ">
				<p>ID</p>
			</div>
			<div class="col-10 ">
				<input type="text" name="id">
			</div>
		</div>
	</div>
	
<jsp:include page="/template/bottom.jsp"></jsp:include>	