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
<title>Listed Tools</title>
</head>
<body>
	<div class="container-fluid">
<h2>Home Page</h2>
		<table class="table table-striped table-hover">
			<thead class="thead thead-dark"><h3>Tool List</h3>
				<form action="createToolForm.do">
				<button type="submit">Add a Tool</button>
				</form>
			</thead>
			<tbody>
			<tr>
				<td>Brand</td>
				<td>Description</td>
				<td>Location</td>
				<td colspan="2">Selection</td>
				</tr>
				<c:forEach items="${tools}" var="tool">
					<tr>
						<td>${tool.brand}</td>
						<td><a href="singleTool.do?id=${tool.id}">${tool.description}</a></td>
						<td>${tool.location}</td>
						<td>
							<form action="updateToolForm.do" method="GET">
								<input type="hidden" name="id" value="${tool.id}" />
								<button type="submit">Update Tool</button>
							</form>
						</td>
						<td>
							<form action="deleteTool.do" method="GET">
								<input type="hidden" name="id" value="${tool.id}" />
								<button type="submit">Delete Tool</button>
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>