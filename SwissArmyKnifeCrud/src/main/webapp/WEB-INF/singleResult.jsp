<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="style.css">
<meta charset="UTF-8">
<title>Tool Created</title>
</head>
<body>
	<div class="container-fluid">
<h2>Tool Added Check.</h2>
<form action="getTools.do">
<button type="submit">Return home.</button>
</form>
	<p>Added ${tool.brand} ${tool.description} to data.</p>
	</div>
</body>
</html>