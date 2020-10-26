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
<title>Update Tool</title>
</head>
<body>
	<div class="container-fluid">
<h3>Update Tool</h3>
<form action="getTools.do">
<button type="submit">Return home.</button>
</form>
		<table class="table table-striped table-hover">
			<thead class="thead thead-dark">Tools
			</thead>
			<tr>
					<form action="updateToolBrand.do" method="GET">
						<input type="hidden" name="id" value="${tool.id}"> 
						<td>Brand:</td>
						<td>${tool.brand}</td>
						<td><input type="text" name="brand" /></td>
						<td><button type="submit">Submit</button></td>
					</form>
			</tr>
			<tr>
					<form action="updateToolDescription.do" method="GET">
						<input type="hidden" name="id" value="${tool.id}">
						<td>Description:</td>
						<td>${tool.description}</td>
						<td><input type="text" name="description" /></td>
						<td><button type="submit">Submit</button></td>
					</form>
			</tr>
			<tr>
					<form action="updateToolYear.do" method="GET">
						<input type="hidden" name="id" value="${tool.id}">
						<td>Year of Purchase:</td>
						<td>${tool.yearBought}</td>
						<td><input type="number" name="yearBought" /></td>
						<td><button type="submit">Submit</button></td>
					</form>
			</tr>
			<tr>
				<form action="updateToolLocation.do" method="GET">
						<input type="hidden" name="id" value="${tool.id}">
						<td>Location:</td>
						<td>${tool.location}</td>
						<td><input type="text" name="location" /></td>
						<td><button type="submit">Submit</button></td>
					</form>
			</tr>
			<tr>
					<form action="updateToolCondition.do" method="GET">
						<input type="hidden" name="id" value="${tool.id}">
						<td>Condition:</td>
						<td>${tool.condition}</td>
						<td><input type="text" name="condition" /></td>
						<td><button type="submit">Submit</button></td>
					</form>
			</tr>
			<tr>
					<form action="updateToolPower.do" method="GET">
						<input type="hidden" name="id" value="${tool.id}">
						<td>Power Type:</td>
						<td>${tool.powerType}</td>
						<td><input type="text" name="powerType" /></td>
						<td><button type="submit">Submit</button></td>
					</form>
			</tr>
			<tr>
					<form action="updateToolCost.do" method="GET">
						<input type="hidden" name="id" value="${tool.id}">
						<td>Replacement Cost:</td>
						<td>${tool.cost}</td>
						<td><input type="number" step="0.01" name="cost" /></td>
						<td><button type="submit">Submit</button></td>
					</form>
			</tr>
			</tbody>
		</table>
	</div>
</body>
</html>