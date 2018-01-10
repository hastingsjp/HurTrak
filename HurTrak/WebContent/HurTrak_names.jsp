<%@ page import="java.util.*" %>
<%@page import="coreservlets.queryBean"%>
<%@  taglib  prefix="c"   uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<h1>Choose Storm</h1>
<form action="./HurTrak_Controller" method="POST">
<input type="hidden" name="NAME_SUBMITTED" value="strm">
<select name="stormChoice" id=stormChoice>
<c:forEach var="item" items="${stormList}">
<c:set var = "sub" value = "${fn:substring(item, 0, 7)}" />
<c:set var = "num" value = "${fn:substringAfter(item, 'UNNAMED')}" />
<c:set var = "td" value = "Un-named #${num}" />
<c:if test = "${sub=='UNNAMED'}">
<option value="${item}">${td}</option>
</c:if>
<c:if test = "${sub!='UNNAMED'}">
<option value="${item}">${item}</option>
</c:if>
</c:forEach>
</select>
<input type="submit" value="Submit" />
</form>
</body>
</html>
