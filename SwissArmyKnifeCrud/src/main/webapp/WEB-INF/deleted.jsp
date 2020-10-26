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
<meta charset="UTF-8">
<title>Tool removed</title>
</head>
<body>
<c:choose>
	<c:when test="deleted">
	<p>${tool.brand} ${tool.description} has been removed.</p>
	</c:when>
	<c:otherwise>
	Removal of ${tool.brand} ${tool.description} FAILED.
	</c:otherwise>
</c:choose>]
</body>
</html>