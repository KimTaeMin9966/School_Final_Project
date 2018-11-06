/**
 * for join 2018-08-29
 */

/**
 * 정규식 sample
 * var regexTitle = /^[\uac00-\ud7a3a-zA-Z]{2,12}$/;
 * var regexTitle = /^[\uac00-\ud7a3a-zA-Z\s0-9]{2,16}$/;
 * var regexTitle = /^[*]{2,20}$/;
 * var regexEmail =/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
 * var regexID = /^[0-9a-zA-Z]{4,12}$/;
 * var regexPhone = /^[0-9]{3,4}[0-9]{4}$/;
 * var regexMobile = /^[0-9]{2,3}?[0-9]{3,4}?[0-9]{4}$/;
 * var regexBirth = /^[0-9]{2}[0-9]{2}[0-9]{2}$/;
 * var regexKey = /^[0-9]{5,6}$/;
 * var regexPass = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
 * var regexName = /^[\uac00-\ud7a3]{2,6}$/;
 * var regexDate = /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/;
 * var regexDateTime = /^[0-9]{2}:[0-9]{2}~[0-9]{2}:[0-9]{2}$/;
 * var regexPass = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;
*/

$(document).ready(function() {
	var regexID = /^[0-9a-zA-Z]{4,12}$/;
	var regexPass = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;
	var regexName = /^[\uac00-\ud7a3]{2,6}$/;
	var regexPhone = /^[0-9]{3,4}[0-9]{4}$/;
	var regexMobile = /^[0-9]{2,3}?[0-9]{3,4}?[0-9]{4}$/;
	var regexBirth = /^[0-9]{2}[0-9]{2}[0-9]{2}$/;

	var boolAdmPass = false;
	var boolAdmAccept = false;
	
	function checkReg(el, tempVal, reg, message) {
		if (reg.test(tempVal) === false) { showErroMessage(el, message); return false; }
		else { showSuccessMessage(el, "사용가능합니다."); return true; }
	}

	function showErroMessage(el, message) {
		var html = "<span style='color:red'>";
		html += message;
		html += "</span>";
		$("#" + el).html(html);
	}

	function showSuccessMessage(el, message) {
		var html = "<span style='color:green'>";
		html += message;
		html += "</span>";
		$("#" + el).html(html);
	}
	
	// ---------------------------------------------------------
	
	$("#mwid").on("input", function() {
		var userID = $("#mwid").val();
		if (userID == '' || userID == null) {
			$("#mwid").focus();
		}

		var message = "올바른 형식의 ID가 아닙니다.";
		checkReg('mwid_result', userID, regexID, message);
	});
	
	$("#mwpw").on("input", function() {
		var mwpw = $("#mwpw").val();

		var message = "올바른 비밀번호 형식이 아닙니다.";
		var booleanGet = checkReg('mwpw_result', mwpw, regexPass, message);
		boolAdmPass = booleanGet;
	});

	$("#mwpw2").on("input", function() {
		var mwpw = $("#mwpw").val();
		var mwpw2 = $("#mwpw2").val();

		if(boolAdmPass && (mwpw === mwpw2)) { showSuccessMessage('mwpw2_result', "비밀번호가 일치합니다."); }
		else { showErroMessage('mwpw2_result', "비밀번호가 일치하지 않습니다."); }
	});
	
	$('#mwname').on('input', function() {
		var mwname = $('#mwname').val();
		var message = "6자이내 한글만 가능합니다.";
		
		checkReg('mwname_result', mwname, regexName, message);
	});

	$('#mwphone').on('input', function() {
		var mwphone = $('#mwphone').val();
		var message = "올바른 형식이 아닙니다.";

		checkReg('mwphone_result', mwphone, regexPhone, message);
	});

	$('#mwmobile').on('input', function() {
		var mwmobile = $('#mwmobile').val();
		var message = "올바른형식이 아닙니다.";

		checkReg('mwmobile_result', mwmobile, regexMobile, message);
	});

	$('#mwbirth').on('input', function() {
		var mwbirth = $('#mwbirth').val();
		var message = "올바른형식이 아닙니다.";

		checkReg('mwbirth_result', mwbirth, regexBirth, message);
	});

	$('#adm_accept').click(function() {
		if ($('#adm_accept').is(':checked') == true) {
			boolAdmAccept = true;
		} else {
			boolAdmAccept = false;
		}
	});
});
