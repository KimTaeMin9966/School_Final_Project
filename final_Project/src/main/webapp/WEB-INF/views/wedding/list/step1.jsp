<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../include/header.jsp" %>

	<div>
		<br><br><br><br><br><br><br><br>
		
		<form id="step1" action="step2.jsp" method="post">
			<input type="checkbox" name="step1" value="상견레및택일하기">상견레및택일하기<br/>
			<input type="checkbox" name="step1" value="홀선정">홀선정<br/>
			<input type="checkbox" name="step1" value="분가여부결정">분가여부결정<br/>
			<input type="checkbox" name="step1" value="컨설팅 결정">컨설팅 결정<br/>
			
			<input type="submit"/>
		</form>				

		<c:forEach var="arr" items="${checklistArr}">
			${arr}	
		</c:forEach>
	
	</div>	

	 



<%@ include file="../../include/footer.jsp" %>

