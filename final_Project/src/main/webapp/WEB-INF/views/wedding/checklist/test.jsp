<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ include file="../../include/header.jsp" %> --%>

<body>
	<div>
		<input type="checkbox" name="test" value=test1>이쁜<br/>
		<input type="checkbox" name="test" value=test2>이쁜물건<br/>
		<input type="checkbox" name="test" value=test3>이쁜아이<br/>
		<input type="checkbox" name="test" value=test4>이쁜돈<br/>
		<input type="checkbox" name="test" value=test5>이쁜동생<br/>
		
		<input type="submit" name="button" value="다음">
	
	 </div>
	 
	 <%
	 	String value = request.getParameter("test");
	 	out.print(value);
	 %>
</body>


<%@ include file="../../include/footer.jsp" %>

