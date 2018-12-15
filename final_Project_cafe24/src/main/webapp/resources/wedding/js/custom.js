$(document).ready(function() {
	var Time = setInterval(rotate, 1000);
	
	var n = 0;
	
	var imgs = new Array(
			"/resources/wedding/images/imagechange/메인2.png",
			"/resources/wedding/images/imagechange/메인3.png",
			"/resources/wedding/images/imagechange/메인4.png",
			"/resources/wedding/images/imagechange/메인5.png",
			"/resources/wedding/images/imagechange/메인6.png",
			"/resources/wedding/images/imagechange/메인7.png",
			"/resources/wedding/images/imagechange/메인8.png",
			"/resources/wedding/images/imagechange/메인9.png",
			"/resources/wedding/images/imagechange/메인10.png",
			"/resources/wedding/images/imagechange/메인11.png",
			"/resources/wedding/images/imagechange/메인12.png"
			);
	
	var target = document.getElementById("slide");
	
	function rotate() {
		if (navigator.appName == "Netscape" && target) { target.src = imgs[n]; }
		else { clearInterval(Time); }
		if (n == (imgs.length - 1)) { clearInterval(Time); } else { n++; }
	}
	
	function autoSize() {
		var dw = $(document).width();
		
		if (dw <= 1025) {
			$('#page').removeClass('_position-special');
			$('#header-main').removeClass('header__bg-transparent');
		} else {
			$('#page').addClass('_position-special');
			$('#header-main').addClass('header__bg-transparent');
		}
	}
	
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
		autoSize();
		CheckingUseragent();
		
		var doc = document.documentElement;
		doc.setAttribute('data-browser-name', bowser.name);
		doc.setAttribute('data-browser-version', bowser.version);
		
		$('.preloader').fadeOut(); 
		$('#preloader').delay(550).fadeOut('slow'); 
		$('body').delay(450).css({'overflow':'visible'});
		
		$('#preloader').delay(5500).remove();
		setInterval(autoSize, 1000);
		
//		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
//		var options = { //지도를 생성할 때 필요한 기본 옵션
//			center: new daum.maps.LatLng(37.5642135, 127.0016985), //지도의 중심좌표.
//			level: 3 //지도의 레벨(확대, 축소 정도)
//		};
//
//		var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴
	});
	
	
	/* ..............................................
	header Bar
	................................................. */
	
	$('#header-main').on('mouseover', function() {
		$(this).addClass('_active');
	});

	$('#header-main').on('mouseleave', function() {
		$(this).removeClass('_active');
	});

	$(window).scroll(function() {
		var wt = $(window).scrollTop();
		
		if(wt >= 647) {
			$('#page').addClass('_header-compressed');
			$('#header-main').addClass('_compressed');
		} else {
			$('#page').removeClass('_header-compressed');
			$('#header-main').removeClass('_compressed');
		}
	});

	$('#header-nav-mobile').on('click', function() {
		$('html').addClass('mm-opened mm-blocking mm-background mm-top mm-front mm-fullscreen mm-multiline mm-opening');
		$('#mobile-menu').addClass('mm-current mm-opened');
		$('#mm-1').addClass('::before');
		$('#mm-1 > ul').addClass('visible');
	});
	
	$('.mm-close').on('click', function() {
		$('html').removeClass('mm-opened mm-blocking mm-background mm-top mm-front mm-fullscreen mm-multiline mm-opening');
		$('#mobile-menu').removeClass('mm-current mm-opened');
		$('#mm-1').removeClass('::before');
		$('#mm-1 > ul').removeClass('visible');
	});
	
	/* ..............................................
    Gallery
    ................................................. */
	
	$('.popup-gallery').magnificPopup({
		delegate: 'a',
		type: 'image',
		tLoading: 'Loading image #%curr%...',
		mainClass: 'mfp-img-mobile',
		gallery: {
			enabled: true,
			navigateByImgClick: true,
			preload: [0,1] // Will preload 0 - before current, and 1 after the current image
		},
		image: {
			tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
			titleSrc: function(item) {
				return item.el.attr('title') + '<small>by Marsel Van Oosten</small>';
			}
		}
	});
});