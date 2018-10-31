<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box">
				<div class="box-header with-border">
					<h3>관리자 페이지(웨딩홀 업체 추가)</h3>
				</div>
				<div class="box-body">
					<form method="post">
						<div class="form-group has-feedback">
							<label>홀이름</label>
							<input type="text" name="hall_name" class="form-control" placeholder="홀 이름" required />
						</div>
						<div class="form-group has-feedback">
							<label>홀위치</label>
							<input type="text" name="hall_location" class="form-control" placeholder="홀 위치" required />
						</div>
						<div class="form-group has-feedback">
							<label>홀수용인원</label>
							<input type="text" name="hall_person" class="form-control" placeholder="홀 수용인원" required />
						</div>
						<div class="form-group has-feedback">
							<label>홀가격</label>
							<input type="text" name="hall_price" class="form-control" placeholder="홀 가격" required />
						</div>
						<div class="form-group has-feedback">
							<label>홀테마</label>
							<input type="text" name="hall_thema" class="form-control" placeholder="홀 테마" required />
						</div>
						<div class="form-group has-feedback">
							<label>홀컨텐츠</label>
							<input type="text" name="hall_contents" class="form-control" placeholder="홀 컨텐츠" required />
						</div>
						<div class="form-group has-feedback">
							<label>페이지 전환을 위한 링크</label>
							<input type="text" name="hall_link" class="form-control" placeholder="링크" required />
						</div>
						<div class="form-group has-feedback">
							<label>지역</label>
							<input type="text" name="hall_area" class="form-control" placeholder="지역" required />
						</div>
						<div class="box-footer">
							<div class="col-xs-8"></div>
							<div class="col-xs-4">
								<input type="submit" class="btn btn-primary btn-block btn-flat" value="홀추가" />
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<%@include file="../include/footer.jsp"%>