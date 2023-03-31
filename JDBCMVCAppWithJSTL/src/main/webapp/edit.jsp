<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="lightblue">
<br/><br/><br/><br/><br/><br/>

	<c:choose>
	   <c:when test="${student ne null}">
	      <form action="./controller/update" method="post">
		       <table border="1" align="center">
		          <tr>
		             <th>SID</th>
		             <td><input type="text" value="${student.sid}" readonly="readonly" name="sid"/></td>
		          </tr>
		          <tr>
		             <th>SNAME</th>
		             <td><input type="text" value="${student.sname}" name="sname"/></td>
		          </tr>
		          <tr>
		             <th>SAGE</th>
		             <td><input type="text" value="${student.sage}" name="sage"/></td>
		          </tr>
		          <tr>
		             <th>SADDRESS</th>
		             <td><input type="text" value="${student.saddr}" name="saddr"/></td>
		          </tr>
		          <tr>
		             <th></th>
		             <td><input type="submit" value="update"/></td>
		          </tr>
		       </table>
	      </form>
	      
	   </c:when>
	   <c:when test="${student eq null}">
	       <h1 style='color:red; text-align: center;'>RECORD NOT AVAILABLE FOR 
	       THE GIVEN ID</h1>
	   </c:when>
	</c:choose>
</body>
</html>