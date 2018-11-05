<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#modal 
	{
		display:none;
		background-color:#FFFFFF;
		position:absolute;
		top:300px;
		left:200px;
		padding:10px;
		border:2px solid #E2E2E2;
		z-Index:9999
	}
</style>
</head>
<body>



<button id="button">Open Modal</button>
  
<!-- 모달창 -->
<div id="modal">
    <h3>Test Modal</h3>
    <p>이 창은 모달창입니다.</p>
    <button id="confirm_button">확인</button>
    <button class="js_close">닫기</button>
</div>





<!-- 스크립트 영역 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modal.js"></script>
<script type="text/javascript">
// 모달창 인스턴트 생성
var myModal = new Example.Modal({
    id: "modal" // 모달창 아이디 지정
});
  
// 모달 창 여는 버튼에 이벤트 걸기
$("#button").click(function() {
    myModal.show(); // 모달창 보여주기
});
  
// 모달 창 안에 있는 확인 버튼에 이벤트 걸기
$("#confirm_button").click(function() {
    alert("나는 모달창이다.");
    myModal.hide(); // 모달창 감추기
});
</script>





</body>
</html>
