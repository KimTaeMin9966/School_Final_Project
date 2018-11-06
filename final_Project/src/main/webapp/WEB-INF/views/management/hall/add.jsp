<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../include/header.jsp"%>
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
							<input type="text" name="hall_name" class="form-control" placeholder="EX) 메리움 웨딩홀" required />
						</div>
						<div class="form-group has-feedback">
							<label>홀위치</label>
							<select name="hall_location" class="form-control" required>
							    <optgroup label="홀위치">
								    <option value="부산 진구">부산 진구</option>
								    <option value="부산 동구">부산 동구</option>
								    <option value="부산 연제구">부산 연제구</option>
								    <option value="부산 해운대구">부산 해운대구</option>
								    <option value="부산 동래구">부산 동래구</option>
								    <option value="부산 중구">부산 중구</option>
							    </optgroup>
							</select>
						</div>
						<div class="form-group has-feedback">
							<label>홀수용인원</label>
							<input type="text" name="hall_person" class="form-control" placeholder="EX) 150" required />
						</div>
						<div class="form-group has-feedback">
							<label>홀가격</label>
							<input type="text" name="hall_price" class="form-control" placeholder="EX) 35000" required />
						</div>
						<div class="form-group has-feedback">
							<label>홀테마</label>
							<input type="text" name="hall_thema" class="form-control" placeholder="EX) dark" required />
						</div>
						<div class="form-group has-feedback">
							<label>홀컨텐츠</label>
							<input type="text" name="hall_contents" class="form-control" placeholder="EX) 테이블형태" required />
						</div>
						<div class="form-group has-feedback">
							<label>페이지 전환을 위한 링크</label>
							<select name="hall_link" class="form-control" required>
							    <optgroup label="페이지 전환을 위한 링크">
								    <option value="detail1">detail1</option>
								    <option value="detail2">detail2</option>
								    <option value="detail3">detail3</option>
								    <option value="detail4">detail4</option>
								    <option value="detail5">detail5</option>
								    <option value="detail6">detail6</option>
							    </optgroup>
							</select>
						</div>
						<div class="form-group has-feedback">
							<label>지역</label>
							<select name="hall_area" class="form-control" required>
							    <optgroup label="지역">
								    <option value="1">부산 진구</option>
								    <option value="2">부산 동구</option>
								    <option value="3">부산 연제구</option>
								    <option value="4">부산 해운대구</option>
								    <option value="5">부산 동래구</option>
								    <option value="6">부산 중구</option>
							    </optgroup>
							</select>
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
<%@include file="../../include/footer.jsp"%>