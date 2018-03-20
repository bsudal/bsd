<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    

    <meta name="description" content="">
    <meta name="author" content="">

 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<link href='//fonts.googleapis.com/css?family=Lobster&subset=latin,latin-ext' rel='stylesheet' type='text/css'>

	<style>
	body { 
	    font-family: "Helvetica Nene", Helvetica, Arial, "나눔바른고딕", "malgun gothic", sans-serif;
	}
	
	html {
	    position: relative;
	    min-height: 100%;
	}
	 body {
	    /* Margin bottom by footer height */

	    margin-top: 56px;
	    margin-bottom: 60px;
	}
	footer {
	    position: absolute;
	    bottom: 0;
	    width: 100%;
	    /* Set the fixed height of the footer here */
	    height: 60px;
	    background-color: #f5f5f5;
	}
	  
	</style>

<title><%= request.getParameter("title") %></title>
</head>
<body>
  <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">자바&파이썬 </a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
				  	<li class="nav-item ">
						<a class="nav-link" href="#">메뉴1</a>
				  	</li>
				  	<li class="nav-item ">
						<a class="nav-link" href="#">메뉴2</a>
				  	</li>
				</ul>
			</div>
		</div>
	</nav>
