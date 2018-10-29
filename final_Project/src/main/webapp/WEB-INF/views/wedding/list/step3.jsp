<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../include/header.jsp" %>

	<div>
		<br><br><br><br><br><br><br><br>
		
		<form id="step3" action="step4.jsp" method="post">
			<input type="checkbox" name="step3" value="피부관리시작하기">피부관리시작하기<br/>
			<input type="checkbox" name="step3" value="촬영드레스초이스,신혼집인테리어,건강검진">촬영드레스초이스,신혼집인테리어,건강검진<br/>
			<input type="checkbox" name="step3" value="주례,사회자부탁, 하객리스트작성, 청첩장제작">주례,사회자부탁, 하객리스트작성, 청첩장제작<br/>
			<input type="checkbox" name="step3" value="리허설촬영/사진셀렉, 한복가봉, 가구,가전제품구입">리허설촬영/사진셀렉, 한복가봉, 가구,가전제품구입<br/>
			<input type="checkbox" name="step3" value="봉투주소록작성,발송, 축의금받는사람 선정">봉투주소록작성,발송, 축의금받는사람 선정<br/>
			
			<input type="submit"/>
		</form>				

		<c:forEach var="arr" items="${checklistArr}">
			${arr}	
		</c:forEach>
	
	</div>	

	 



<%@ include file="../../include/footer.jsp" %>

