<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!--------------------------------------------------------------------------------- Check List Main Step1 -->

<!DOCTYPE HTML>
	<html lang="ko">
	
	  <head>
	    <meta charset="UTF-8">
	    <title>Check List</title>
	    
	    <style>
	      table {
	        width: 100%;     
	      }
	      .innertable{
	      	border: 1px solid
	      }
	      .innertable td{
	      	border: 1px solid
	      }
	    </style>
	  </head>
	 
	  <body>
	    <table>
	      <thead>
	        <tr>
	        	<th>CHECK LIST</th>
	        </tr>
	      </thead>
	      <tbody>
	      	<table class="innertable">
	        	<tr>
			        <td> <input type=checkbox id="ck_step1_1"> 상견례  </td>
			        <td>
			        	${step1_1list.matchmaker_date}<br/>
				        ${step1_1list.matchmaker_day}<br/>
				        ${step1_1list.matchmaker_place}<br/>
				        ${step1_1list.matchmaker_etc}<br/>
				    </td>
		        </tr>
		        

		        <tr>		        
			        <td> <input type=checkbox id="ck_step1_2"> 웨딩홀 & 예약일 </td>	
			        <td> </td>
		        </tr>
		        	
		        <tr>
		        	<td> <input type=checkbox id="ck_step1_3"> 스튜디오 & 예약일 </td>	
		        	<td>  </td>
		        </tr>
		        
		        <tr>
			        <td><input type=checkbox id="ck_step1_4">컨설팅 </td>
			        <td>  </td>
		        </tr>
	        </table>
	        
	      	<br/><br/>	        
	
		    <tr>
				 <form action="/wedding/list/step2" method="post">
				 	<td> <input type=submit value="다음>"> </td>
				 </form>
				 
				<!-- <td> <input type=submit value="다음>" onclick="location.href='/wedding/list/step2'"> </td> -->
				<!-- <td> <input type=submit value="다음>" a href="/wedding/list/step2"> </td>  -->
		    </tr>	        
		    	
	              
	      </tbody>
	    </table>
	  </body>  
	</html>
	



<!-------------------------------------------------------------------------- Check List Modal Step1_1 상견례-->	
<style>
#modal_step1_1
	{
		display:none;
		background-color:#FFFFFF;
		position:absolute;
		top:300px;
		left:200px;
		padding:10px;
		border:2px solid #E2E2E2;
		z-Index:9999;
		resizeable : true
	}
</style>

<body>
  
<!-- 모달창 -->
<div id="modal_step1_1">
    <h3>STEP1_1 <br/> 상견례</h3>
    <form action="/wedding/list/step1" method="post">
    <p>
    	<input type="hidden" name="mwid" value="${memberVo.mwid}"/>
    	<!-- value="1111" input 각괄호 안에 value값 지정시 초기값이 1111로 설정되어져 있다-->
    	날짜<input type=text id=step1_1text1 name=step1_1text1 value="${step1_1list.matchmaker_date}"><br/>
    	요일<input type=text id=step1_1text2 name=step1_1text2 value="${step1_1list.matchmaker_day}"><br/>
    	장소<input type=text id=step1_1text3 name=step1_1text3 value="${step1_1list.matchmaker_place}"><br/>
    	기타<input type=text id=step1_1text4 name=step1_1text4 value="${step1_1list.matchmaker_etc}"><br/>
    	<!-- <input type="submit"> 서브밋하면 값 넘어가는 것 확인한다고?-->
    </p>
    </form>
	<button id="ck_step1_1_save">저장</button>
	<button id="ck_step1_1_motify">수정</button>
	<button id="ck_step1_1_cancel">취소</button>
	<br/>
	<button id="ck_step1_1_reset">초기화</button>
</div>

<!-- 스크립트 영역 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modal.js"></script>
<script type="text/javascript">

 // 모달창 인스턴트 생성
var myModal = new Example.Modal({
    id: "modal_step1_1" // 모달창 아이디 지정
}); 
          
// 모달 창 여는 체크박스
$("#ck_step1_1").click(function() {
    myModal.show(); // 모달창 보여주기
});
  
// 저장 버튼 이벤트 
$("#ck_step1_1_save").click(function() {
	$("#td_step_1_1").html
		($("#step1_1text1").val()+'<br/>'
		+$("#step1_1text2").val()+'<br/>'
		+$("#step1_1text3").val()+'<br/>'
		+$("#step1_1text4").val());
    myModal.hide(); // 모달창 감추기
    
    /* 비동기통신 */
    $.ajax({
        type : "GET", //전송방식을 지정한다 (POST,GET)
        url : "/wedding/list/step1",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        data :{
        	mwid:"${memberVo.mwid}",
        	step1_1text1:$("#step1_1text1").val(), 	/* name키값 : val값 */
        	step1_1text2:$("#step1_1text2").val(),
        	step1_1text3:$("#step1_1text3").val(),
        	step1_1text4:$("#step1_1text4").val()
        },
        error : function(){
            alert("Fail");
        },
        success : function(Parse_data){
            alert(Parse_data);
        }
         
    });
    
});

//수정 버튼 이벤트 
$("#ck_step1_1_modify").click(function() {
		$("#td_step_1_1").html
			($("#step1_1text1").val()+'<br/>'
			+$("#step1_1text2").val()+'<br/>'
			+$("#step1_1text3").val()+'<br/>'
			+$("#step1_1text4").val());
		myModal.hide(); // 모달창 감추기
		
		/* 비동기통신 */
		$.ajax({
		    type : "GET", //전송방식을 지정한다 (POST,GET)
		    url : "/wedding/list/step1",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
		    dataType : "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
		    data :{
		    	mwid:"${memberVo.mwid}",
		    	step1_1text1:$("#step1_1text1").val(), 	/* name키값 : val값 */
		    	step1_1text2:$("#step1_1text2").val(),
		    	step1_1text3:$("#step1_1text3").val(),
		    	step1_1text4:$("#step1_1text4").val()
		    },
		    error : function(){
		        alert("Fail");
		    },
		    success : function(Parse_data){
		        alert(Parse_data);
		    }   
		});
});

//취소 버튼 이벤트 
$("#ck_step1_1_cancel").click(function() {
	myModal.hide();
});

//초기화 버튼 이벤트   
$("#ck_step1_1_reset").click(function() {
	$("#step1_1text1").val("");
    $("#step1_1text2").val("");
    $("#step1_1text3").val("");
    $("#step1_1text4").val("");
});

//체크박스 선택과 미선택시 알림창 
$("#ck_step1_1").change(function(){
	if($("#ck_step1_1").is(":checked")){
		alert("상견례 체크되었습니다.");
	}else{
		alert("체크박스가 해제되었습니다.");
	}
});
</script>

</body>
</html>


<!-------------------------------------------------------------------------- Check List Modal Step1_2 스튜디오-->	
<style>
#modal_step1_2
	{
		display:none;
		background-color:#FFFFFF;
		position:absolute;
		top:300px;
		left:200px;
		padding:10px;
		border:2px solid #E2E2E2;
		z-Index:9999;
		resizeable : true
	}
</style>

<body>
  
<!-- 모달창 -->
<div id="modal_step1_2">
    <h3>STEP1_2 <br/> 스튜디오 </h3>
    <form action="/wedding/list/Result" method="post">
    <p>
    	<input type="hidden" name="mwid" value="${memberVo.mwid}"/>

    	 스튜디오업체<input type=text id=step1_2studio name=step1_2studio value=""><br/>
    	스튜디오예약일<input type=text id=step1_2studioDate name=step1_2studioDate value=""><br/>


    </p>
    </form>
	<button id="ck_step1_2_save">저장</button>
	<button id="ck_step1_2_motify">수정</button>
	<button id="ck_step1_2_cancel">취소</button>
	<br/>
	<button id="ck_step1_2_reset">초기화</button>
</div>

<!-- 스크립트 영역 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modal.js"></script>
<script type="text/javascript">

// 모달창 인스턴트 생성
var myModal2 = new Example.Modal({
    id: "modal_step1_2" // 모달창 아이디 지정
}); 
  
// 모달 창 여는 체크박스
$("#ck_step1_2").click(function() {
    myModal2.show(); // 모달창 보여주기
});
  
// 저장 버튼 이벤트 
$("#ck_step1_2_save").click(function() {
	$("#td_step_1_2").html
		($("#step1_2studio").val()+'<br/>'
		+$("#step1_2studioDate").val()+'<br/>'

    myModal2.hide(); // 모달창 감추기
    
    /* 비동기통신 */
    $.ajax({
        type : "GET", //전송방식을 지정한다 (POST,GET)
        url : "/wedding/list/step1",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        data :{
        	mwid:"${memberVo.mwid}",
        	step1_1text1:$("#step1_2studio").val(), 	/* name키값 : val값 */
        	step1_1text2:$("#step1_2studioDate").val(),

        },
        error : function(){
            alert("Fail");
        },
        success : function(Parse_data){
            alert(Parse_data);
        }
         
    });
    
});

//수정 버튼 이벤트 
$("#ck_step1_2_modify").click(function() {
    
});

//취소 버튼 이벤트 
$("#ck_step1_2_cancel").click(function() {
	myModal2.hide();
});

//초기화 버튼 이벤트   
$("#ck_step1_2_reset").click(function() {
	$("#step1_2studio").val("");
    $("#step1_2studioDate").val("");

});

//체크박스 선택과 미선택시 알림창 
$("#ck_step1_2").change(function(){
	if($("#ck_step1_2").is(":checked")){
		alert("스튜디오가 체크되었습니다.");
	}else{
		alert("체크박스가 해제되었습니다.");
	}
});
</script>
	
</body>
</html>	
	
<!-------------------------------------------------------------------------- Check List Modal Step1_3 웨딩홀-->	
<style>
#modal_step1_3
	{
		display:none;
		background-color:#FFFFFF;
		position:absolute;
		top:300px;
		left:200px;
		padding:10px;
		border:2px solid #E2E2E2;
		z-Index:9999;
		resizeable : true
	}
</style>

<body>
  
<!-- 모달창 -->
<div id="modal_step1_3">
    <h3>STEP1_3 <br/> 웨딩홀 </h3>
    <form action="" method="post">
    <p>
    	<input type="hidden" name="mwid" value="${memberVo.mwid}"/>
    	
    	웨딩홀업체<input type=text id=step1_3hall name=step1_3hall value=""><br/>
    	웨딩홀예약일<input type=text id=step1_3hallDate name=step1_3hallDate value=""><br/>

    </p>
    </form>
	<button id="ck_step1_3_save">저장</button>
	<button id="ck_step1_3_motify">수정</button>
	<button id="ck_step1_3_cancel">취소</button>
	<br/>
	<button id="ck_step1_3_reset">초기화</button>
</div>

<!-- 스크립트 영역 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modal.js"></script>
<script type="text/javascript">

// 모달창 인스턴트 생성
var myModal3 = new Example.Modal({
    id: "modal_step1_3" // 모달창 아이디 지정
}); 
  
// 모달 창 여는 체크박스
$("#ck_step1_3").click(function() {
    myModal3.show(); // 모달창 보여주기
});
  
// 저장 버튼 이벤트 
$("#ck_step1_3_save").click(function() {
	$("#td_step_1_3").html
		+$("#step1_3hall").val()+'<br/>'
		+$("#step1_3hallDate").val());
    myModal2.hide(); // 모달창 감추기
    
    /* 비동기통신 */
    $.ajax({
        type : "GET", //전송방식을 지정한다 (POST,GET)
        url : "/wedding/list/step1",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        data :{
        	mwid:"${memberVo.mwid}",
        	step1_1text3:$("#step1_3hall").val(),
        	step1_1text4:$("#step1_3hallDate").val()
        },
        error : function(){
            alert("Fail");
        },
        success : function(Parse_data){
            alert(Parse_data);
        }
         
    });
    
});

//수정 버튼 이벤트 
$("#ck_step1_3_modify").click(function() {
    
});

//취소 버튼 이벤트 
$("#ck_step1_3_cancel").click(function() {
	myModal3.hide();
});

//초기화 버튼 이벤트   
$("#ck_step1_3_reset").click(function() {
    $("#step1_3hall").val("");
    $("#step1_3hallDate").val("");
});

//체크박스 선택과 미선택시 알림창 
$("#ck_step1_3").change(function(){
	if($("#ck_step1_3").is(":checked")){
		alert("웨딩홀이 체크되었습니다.");
	}else{
		alert("체크박스가 해제되었습니다.");
	}
});
</script>
	
</body>
</html>	

<!-------------------------------------------------------------------------- Check List Modal Step1_4 컨설팅-->	
<style>
#modal_step1_4
	{
		display:none;
		background-color:#FFFFFF;
		position:absolute;
		top:300px;
		left:200px;
		padding:10px;
		border:2px solid #E2E2E2;
		z-Index:9999;
		resizeable : true
	}
</style>

<body>
  
<!-- 모달창 -->
<div id="modal_step1_4">
    <h3>STEP1_4 <br/> 컨설팅 </h3>
    <form action="" method="post">
    <p>
    	<input type="hidden" name="mwid" value="${memberVo.mwid}"/>
    	
    	컨설팅업체<input type=text id=step1_4consulting name=step1_4consulting value=""><br/>

    </p>
    </form>
	<button id="ck_step1_4_save">저장</button>
	<button id="ck_step1_4_motify">수정</button>
	<button id="ck_step1_4_cancel">취소</button>
	<br/>
	<button id="ck_step1_4_reset">초기화</button>
</div>

<!-- 스크립트 영역 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modal.js"></script>
<script type="text/javascript">

// 모달창 인스턴트 생성
var myModal4 = new Example.Modal({
    id: "modal_step1_4" // 모달창 아이디 지정
}); 
  
// 모달 창 여는 체크박스
$("#ck_step1_4").click(function() {
    myModal4.show(); // 모달창 보여주기
});
  
// 저장 버튼 이벤트 
$("#ck_step1_4_save").click(function() {
	$("#td_step_1_4").html
		+$("#step1_4consulting").val()+'<br/>'
    myModal2.hide(); // 모달창 감추기
    
    /* 비동기통신 */
    $.ajax({
        type : "GET", //전송방식을 지정한다 (POST,GET)
        url : "/wedding/list/step1",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        data :{
        	mwid:"${memberVo.mwid}",
        	step1_1text3:$("#step1_4consulting").val(),
        },
        error : function(){
            alert("Fail");
        },
        success : function(Parse_data){
            alert(Parse_data);
        }
         
    });
    
});

//수정 버튼 이벤트 
$("#ck_step1_4_modify").click(function() {
    
});

//취소 버튼 이벤트 
$("#ck_step1_4_cancel").click(function() {
	myModal3.hide();
});

//초기화 버튼 이벤트   
$("#ck_step1_4_reset").click(function() {
    $("#step1_4consulting").val("");
});

//체크박스 선택과 미선택시 알림창 
$("#ck_step1_4").change(function(){
	if($("#ck_step1_4").is(":checked")){
		alert("컨설팅이 체크되었습니다.");
	}else{
		alert("체크박스가 해제되었습니다.");
	}
});
</script>
	
</body>
</html>	
