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
<title>Add a tool</title>
</head>
<body>
	<div class="container-fluid">
<h3>Add a Tool</h3>
<form action="getTools.do">
<button type="submit">Return home.</button>
</form>
		<form action="addTool.do" method="GET">
			<ul class="list-group">
				<li class="list-group-item">Brand:<input type="text" name="brand" required /></li>
				<li class="list-group-item">Description:<input type="text" name="description" required /></li>
				<li class="list-group-item">Year of Purchase:<input type="number" name="yearBought" /></li>
				<li class="list-group-item">Location:<input type="text" name="location" /></li>
				<li class="list-group-item">Condition:<input type="text" name="condition" /></li>
				<li class="list-group-item">Power Type:<input type="text" name="powerType" /></li>
				<li class="list-group-item">Replacement Cost:<input type="number" step="0.1" name="cost" /></li>
				<li><button type="submit">Submit</button></li>
			</ul>
		</form>
	</div>
</body>
</html>