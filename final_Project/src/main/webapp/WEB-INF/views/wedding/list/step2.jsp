<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../include/header.jsp" %>

	<div>
		<br><br><br><br><br><br><br><br>
		
		<form id="step2" action="step3.jsp" method="post">
			<input type="checkbox" name="step2" value="신혼집계약">신혼집계약<br/>
			<input type="checkbox" name="step2" value="드레스투어,샵결정">드레스투어,샵결정<br/>
			<input type="checkbox" name="step2" value="신혼여행지결정">신혼여행지결정<br/>
			<input type="checkbox" name="step2" value="한복맞추기,예단준비">한복맞추기,예단준비<br/>
			
			<input type="submit"/>
		</form>				

		<c:forEach var="arr" items="${checklistArr}">
			${arr}	
		</c:forEach>
	
	</div>	

	 



<%@ include file="../../include/footer.jsp" %>

