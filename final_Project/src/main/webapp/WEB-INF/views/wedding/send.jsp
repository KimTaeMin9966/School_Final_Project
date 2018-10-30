<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%><!-- Start Contact -->
<div class="contact">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="title-box">
					<h2>Contact wth us</h2>
					<p>청첩장보내기 기능입니다. 보내실분의 이름과, 휴대폰번호를 입력하여 전송하면 온라인청첩장이 전송됩니다.</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 col-sm-12 col-xs-12">
				<div class="contact-block">
					<form id="contactForm">
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input type="text" class="form-control" id="name" name="name"
										placeholder="Your Name" required data-error="Please enter your name">
									<div class="help-block with-errors"></div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<input type="text" placeholder="Your Email" id="email" class="form-control" name="name" required
										data-error="Please enter your email">
									<div class="help-block with-errors"></div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<select class="custom-select d-block form-control" id="guest" required
										data-error="Please select an item in the list.">
										<option disabled selected>Number Of Guest*</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
									</select>
									<div class="help-block with-errors"></div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<select class="custom-select d-block form-control" id="event" required
										data-error="Please select an item in the list.">
										<option disabled selected>I Am Attending*</option>
										<option value="1">All events</option>
										<option value="2">Wedding ceremony</option>
										<option value="3">Reception party</option>
									</select>
									<div class="help-block with-errors"></div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<textarea class="form-control" id="message" placeholder="Your Message" rows="8"
										data-error="Write your message" required></textarea>
									<div class="help-block with-errors"></div>
								</div>
								<div class="submit-button text-center">
									<button class="btn btn-common" id="submit" type="submit">Send Message</button>
									<div id="msgSubmit" class="h3 text-center hidden"></div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<script>
			$('#submit').on('click', function() {
				alert("aaa");
			});
		</script>
	</div>
	<!-- End Container -->
</div>
<!-- End Contact -->
<%@include file="../include/footer.jsp"%>