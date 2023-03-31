<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="lightblue">
<br/><br/><br/><br/><br/><br/>
<c:set var="result" value="${requestScope.student}"></c:set>
	<c:choose>
	   <c:when test="${result ne null}">
	       <table border="1" align="center">
	          <tr>
	             <th>SID</th>
	             <td>${result.sid}</td>
	          </tr>
	          <tr>
	             <th>SNAME</th>
	             <td>${result.sname}</td>
	          </tr>
	          <tr>
	             <th>SAGE</th>
	             <td>${result.sage}</td>
	          </tr>
	          <tr>
	             <th>SADDRESS</th>
	             <td>${result.saddr}</td>
	          </tr>
	       </table>
	   </c:when>
	   <c:when test="${result eq null}">
	       <h1 style='color:red; text-align: center;'>RECORD NOT AVAILABLE FOR 
	       THE GIVEN ID</h1>
	   </c:when>
	</c:choose>
</body>
</html>