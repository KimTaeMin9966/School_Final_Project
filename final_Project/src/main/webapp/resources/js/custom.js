$(document).ready(function() {
	/* ..............................................
	Loader 
    ................................................. */
	
	$(window).on('load', function() { 
		$('.preloader').fadeOut(); 
		$('#preloader').delay(550).fadeOut('slow'); 
		$('body').delay(450).css({'overflow':'visible'});
		
		
//		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
//		var options = { //지도를 생성할 때 필요한 기본 옵션
//			center: new daum.maps.LatLng(37.5642135, 127.0016985), //지도의 중심좌표.
//			level: 3 //지도의 레벨(확대, 축소 정도)
//		};
//
//		var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴
	});
	
	var dw = $(document).width();
	
	if (dw <= 1025) {
		$('#page').removeClass('_position-special');
		$('#header-main').removeClass('header__bg-transparent');
	} else {
		$('#page').addClass('_position-special');
		$('#header-main').addClass('header__bg-transparent');
	}
	
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