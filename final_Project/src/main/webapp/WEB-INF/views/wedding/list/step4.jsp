<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../include/header.jsp" %>

	<div>
		<br><br><br><br><br><br><br><br>
		
		<form id="step4" action="step5.jsp" method="post">
			<input type="checkbox" name="step4" value="예복구입,신혼집이사,도우미부탁">예복구입,신혼집이사,도우미부탁<br/>
			<input type="checkbox" name="step4" value="주례선생님찾아뵙기,DP용사진찾기,혼수들이기,여행일정확인및필요용품구입">주례선생님찾아뵙기,DP용사진찾기,혼수들이기,여행일정확인및필요용품구입<br/>
			<input type="checkbox" name="step4" value="축가,축하연주,웨딩키확인,본식드레스가봉,부케고르기">축가,축하연주,웨딩키확인,본식드레스가봉,부케고르기<br/>
			<input type="checkbox" name="step4" value="여행경비환전/여행가방꾸리기">여행경비환전/여행가방꾸리기<br/>
			<input type="checkbox" name="step4" value="신혼집정리,회사에휴가신청,혼인신고서류준비">신혼집정리,회사에휴가신청,혼인신고서류준비<br/>
			
			<input type="submit"/>
		</form>				

		<c:forEach var="arr" items="${checklistArr}">
			${arr}	
		</c:forEach>
	
	</div>	

	 



<%@ include file="../../include/footer.jsp" %>

