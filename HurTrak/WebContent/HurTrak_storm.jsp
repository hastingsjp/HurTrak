<%@ page import="java.util.*" %>
<%@  taglib  prefix="c"   uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ultimate Result</title>
</head>
<body>
<!-- <form action="./HurTrak_Controller" method="POST"> -->
<!-- <input type="hidden" name="BOTH_SUBMITTED" value="both"> -->
You Chose:
<c:out value="${name}" />
<c:out value="${year}" />
<c:out value="${ID}" />
<c:out value="${maxWind}" />
<c:out value="${path}" />
<!-- <input type="submit" value="Submit" /> -->
</form>
</body>
</html>