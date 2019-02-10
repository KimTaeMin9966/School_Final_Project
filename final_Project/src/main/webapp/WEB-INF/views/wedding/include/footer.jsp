<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
			<style>
				.app-links-inner .inspection_time_wrp {
					position: relative;
					height: 135px;
				}
				
				.app-links-inner .inspection_time_txt {
					position: absolute;
					left: 0;
					top: 3px;
					width: 100%;
					text-align: center;
					font-size: 20px;
					font-weight: bold;
					color: #fff;
				}
				
				.app-links-inner .inspection_loading {
					position: relative;
					float: left;
					padding-left: 0;
				}
				
				.app-links-inner .inspection_loading .icon_chr {
					position: absolute;
					right: 0;
					top: 0;
					width: 51px;
					height: 80px;
					margin-right: -20px;
				}
				
				.app-links-inner .inspection_loading .icon_bar {
					position: absolute;
					right: 0;
					width: 100%;
					height: 45px;
					background: #d30000;
				}
				
				.app-links-inner .inspection_loading .txt {
					position: absolute;
					right: 0;
					top: 45px;
					height: 20px;
					text-align: center;
					margin-right: -17px;
					font-weight: bold;
					color: #d30000;
				}
				
				.app-links-inner .inspection_wrp h2 {
					padding: 45px 0 5px 0;
					font-size: 13px;
				}
			</style>
			<!-- Start Footer -->
			<footer id="footer-main" class="accordion-wrapper standard" data-module="footer, accordion">
				<div class="wrapper-back-to-top">
					<a class="back-to-top" href="#">위로 이동</a>
				</div>
				<div class="content-inner">
					<p class="copyright korea">
						<br>
						<br>
						<img src="http://koreate.net/imgs/re_main/flogo.png" title="한국기술교육직업전문학교"
							alt="한국기술교육직업전문학교 흑백의 로고 이미지입니다.">
					</p>
					<p class="copyright korea">
						MADE WEDDING - MW<br>
						부산광역시 동래구 충렬대로 84 영남빌딩 9층 901호<br>
						Tel : +82) 051-714-5709&nbsp;&nbsp;/&nbsp;&nbsp;Fax : +82) 051-1234-5678<br>
						이메일 문의&nbsp;:&nbsp;<a title="문의 사항이 있을경우 보네주세요" style="color: inherit; text-decoration: none; outline: 0 none;" href="mailto: 2018.web.programmer.kimtaemin@gmail.com">2018.web.programmer.kimtaemin@gmail.com</a><br>
						호스팅 서비스&nbsp;:&nbsp;<a style="color: inherit; text-decoration: none; outline: 0 none;" href="https://www.cafe24.com/">www.cafe24.com</a>
					</p>
					<c:choose>
						<c:when test="${!empty loginYES && loginYES.mwid eq 'master'}">
							<div id="app-links" class="app-links">
								<div class="app-links-inner">
									<small class="now_time">
										<span id="year"></span>.<span id="month"></span>.<span id="day"></span>(<span id="weekday"></span>)&nbsp;<span id="hours"></span>:<span id="min"></span>:<span id="sec"></span>
									</small>
									<article class="inspection_time_wrp">
										<div class="inspection_loading" style="width: 100%;">
											<div class="icon_bar" style="background: #333;"></div>
										</div>
										<div class="inspection_loading" id="inspection_loading" style="width: 35%;">
											<div class="icon_bar">
												<div class="txt" id="progressBar"></div>
											</div>
										</div>
										<div class="inspection_time_txt">2018년 11월 08일 오전 00시 00분 00초 ~ 2019년 03월 07일 오후 11시 59분 59초</div>
									</article>
								</div>
							</div>
						</c:when>
					</c:choose>
				</div>
			</footer>
			<!-- End Footer -->
			<script>
				$('#app-links').on('mouseover', function() {
					$(this).addClass('active');
				});
			
				$('#app-links').on('mouseleave', function() {
					$(this).removeClass('active');
				});
			
				$(document).ready(function() {
					var monthNames = [ "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12" ];
					var dayNames = [ "일", "월", "화", "수", "목", "금", "토" ];
					var newDate = new Date();
					var hours = new Date().getHours();
					var minutes = new Date().getMinutes();
					var seconds = new Date().getSeconds();
			
					Update();
			
					$('#year').html(newDate.getFullYear());
					$('#month').html(monthNames[newDate.getMonth()]);
					$('#day').html(newDate.getDate());
					$('#weekday').html(dayNames[newDate.getDay()]);
					$("#hours").html((hours < 10 ? "0" : "") + hours);
					$("#min").html((minutes < 10 ? "0" : "") + minutes);
					$("#sec").html((seconds < 10 ? "0" : "") + seconds);
			
					setInterval(function() {
						var seconds = new Date().getSeconds();
						$("#sec").html((seconds < 10 ? "0" : "") + seconds);
					}, 1000);
			
					setInterval(function() {
						var minutes = new Date().getMinutes();
						$("#min").html((minutes < 10 ? "0" : "") + minutes);
					}, 1000);
			
					setInterval(function() {
						var hours = new Date().getHours();
						$("#hours").html((hours < 10 ? "0" : "") + hours);
					}, 1000);
			
					setInterval(function() {
						Update();
					}, 1000);
				});
			
				function Update() {
					var nowDate = new Date();
					var startTime = new Date("11/08/2018 00:00:00 AM").getTime();
					var endTime = new Date("3/07/2019 11:59:59 PM").getTime();
			
					var percent = Math.floor(((nowDate.getTime() - startTime) / (endTime - startTime)) * 100);
					percent = percent > 100 ? 100 : percent;
			
					$('#inspection_loading').attr("style", "width:" + percent + "%;");
					$("#progressBar").html(Number(percent) + "%");
				}
			</script>
		</div>
	</div>
</body>
</html>