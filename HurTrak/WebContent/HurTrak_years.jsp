<%@ page import="java.util.*" %>
<%@page import="coreservlets.queryBean"%>
<%@  taglib  prefix="c"   uri="http://java.sun.com/jsp/jstl/core"  %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <jsp:useBean id="yrs" scope="page" class="coreservlets.queryBean" />
        <h1>Choose Year</h1>
        <table border="1">
            <thead>
                <tr>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td> <form action="./HurTrak_Controller" method="POST">
                            <strong>Year:</strong>
<input type="hidden" name="YEAR_SUBMITTED" value="jspVal">
                            <select name="yearChoice" id=yearChoice>
                                <c:forEach var="aff" items="${yrs.yearz}">
                                    <option value="${aff}">${aff}</option>
                                </c:forEach>
                            </select>
        <input type="submit" value="Submit" />
                        </form>

                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
