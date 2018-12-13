$(document).ready(function() {
	function CheckingUseragent() {
		var TsLoaded = null;
		var TsIsDomContentLoaded = null;

		//User agent
		var ua = navigator.userAgent.toLowerCase();
		//Android check
		var isAndroid_check = ua.indexOf("android") > -1;
		//IE check
		var Idx_check = ua.indexOf("msie");
		//IE11 check
		var isIE_check = (Idx_check > 0) || (!!navigator.userAgent.match(/Trident\/7\./));

		document.addEventListener("DOMContentLoaded", function(event) {
			TsIsDomContentLoaded = true;
		});

		//Create and Append script to head if browser is not IE and device is not Android
		if (!isIE_check && !isAndroid_check) {

			var scriptTS = document.createElement('script');
			scriptTS.type = 'text/javascript';
			scriptTS.src = '//d1208u0kg00xtu.cloudfront.net/static/K3eCKwbGlkA%253D/ts105.js';
			scriptTS.charset = "utf-8";
			
			scriptTS.onload = function() {
				if (TsIsDomContentLoaded && typeof Ts != 'undefined') {
					Ts.reload();
					console.log('Ts_reloaded');
				}
			};
			document.getElementsByTagName('head')[0].appendChild(scriptTS);
		}
	}
	
	/* ..............................................
	Loader 
    ................................................. */
	
	$(window).on('load', function() {
		CheckingUseragent();
		
		var doc = document.documentElement;
		doc.setAttribute('data-browser-name', bowser.name);
		doc.setAttribute('data-browser-version', bowser.version);
		
//		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
//		var options = { //지도를 생성할 때 필요한 기본 옵션
//			center: new daum.maps.LatLng(37.5642135, 127.0016985), //지도의 중심좌표.
//			level: 3 //지도의 레벨(확대, 축소 정도)
//		};
//
//		var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴
	});
	
	
	/* ..............................................
	
	................................................. */
});