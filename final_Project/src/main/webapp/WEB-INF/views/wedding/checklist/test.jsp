<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../include/header.jsp" %>

<body style="text-align:center;">
	<div>
		<br><br><br><br><br><br><br><br>
		<!-- /wedding/checklist/test action="/wedding/checklist/test" -->
		<form id="testform"  method="post">
			<input type="checkbox" name="test" value="이쁜">이쁜<br/>
			<input type="checkbox" name="test" value="이쁜물건">이쁜물건<br/>
			<input type="checkbox" name="test" value="이쁜아이">이쁜아이<br/>
			<input type="checkbox" name="test" value="이쁜돈">이쁜돈<br/>
			<input type="checkbox" name="test" value="이쁜동생">이쁜동생<br/>
			
			<input type="submit"/>
		</form>				

	<c:forEach var="arr" items="${checklistArr}">
		${arr}	
	</c:forEach>
	 

	
<!--  		<script>
		$(document).ready(function(){

			
			if($("#test").val()!=""){
				<c:forEach items="${checklistarr}" var="checklistarr" varStatus="status">
				alert('<c:out value="${arr}"></c:out>');
				</c:forEach>
			}
			
		});
		</script>			
 -->			 
			
	

	 </div>	
</body>



	 

	 



<%@ include file="../../include/footer.jsp" %>

