<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../include/header.jsp" %>

	<div>
		<br><br><br><br><br><br><br><br>
		
		<form id="step5"  method="post">
			<input type="checkbox" name="step5" value="차량,지갑,소품,사례비등 최종점검">차량,지갑,소품,사례비등 최종점검<br/>
			<input type="checkbox" name="step5" value="사진,비디오,부케,화장,폐백음식 등 점검">사진,비디오,부케,화장,폐백음식 등 점검<br/>
			<input type="checkbox" name="step5" value="한복챙기기,준비물최종점검,부모님께편지쓰기">한복챙기기,준비물최종점검,부모님께편지쓰기<br/>
			<input type="checkbox" name="step5" value="메이크업샵도착,부케/폐백음식체크,예식시작,예식장잔금및식대계산,2시간전공항도착">메이크업샵도착,부케/폐백음식체크,예식시작,예식장잔금및식대계산,2시간전공항도착<br/>
			<input type="checkbox" name="step5" value="웨딩완료,행복한결혼생활시작하세요">웨딩완료,행복한결혼생활시작하세요<br/>
			
			<input type="submit"/>
		</form>				

		<c:forEach var="arr" items="${checklistArr}">
			${arr}	
		</c:forEach>
	
	</div>	

	 



<%@ include file="../../include/footer.jsp" %>

