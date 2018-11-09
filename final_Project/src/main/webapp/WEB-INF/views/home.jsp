<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="include/header.jsp"%>
<div data-component-container="categoryThreeImageComponent"
	class="category-product-grid category-product-grid-three-left">
	<div class="category-product-grid-wrapper">
		<section class="style-news">
			<div class="style-news-content-wrapper">
				<header class="style-news-header">
					<p class="eyebrow"></p>
					<h2 class="title">
						<font style="vertical-align: inherit;"><font
							style="vertical-align: inherit;">PAGE NEWS</font></font>
					</h2>
					<p class="eyebrow"></p>
				</header>
				
				<section class="style-news-content">

					<div class="items-wrapper">

						<!-- Checks on visibility and video repeated here (and not inside the sub-component) because of the dynamic position class "even" / "odd" -->
						<!-- See GUCUAT-2445 and GUCUAT-2447 -->

						<!-- Homepage Style and News (Normal) - Even -->
						<div class="style-news-item normal-item even">
							<div class="item-inner-wrapper">
								<div class="image-wrapper">
									<a
										href="/wedding/consulting">
										<img alt="" data-story-image=""
										src="${pageContext.request.contextPath}/resources/images/companys.png"
										class="_loaded">
									</a>
								</div>
								<h3 class="title">
									<font style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">BUSAN WEDDING
											CONSULTING</font></font>
								</h3>

								<div class="link">
									<a data-story-link=""
										href="/wedding/consulting"
										target="_top"><font style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">부산 대표컨설팅</font></font></a>
								</div>
							</div>

						</div>
						<!-- Homepage Style and News (Video) - 1st -->
						<div class="style-news-item normal-item odd">
							<div class="item-inner-wrapper">
								<div class="image-wrapper">
									<a
										href="/wedding/list">
										<img alt="" data-story-image=""
										src="${pageContext.request.contextPath}/resources/images/checklist.png"
										class="_loaded">
									</a>
								</div>
								<h3 class="title">
									<font style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">CHECKLIST</font></font>
								</h3>

								<div class="link">
									<a data-story-link=""
										href="/wedding/list"
										target="_top"><font style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">체크리스트</font></font></a>
								</div>
							</div>

						</div>
						<!-- Homepage Style and News (Featured) - Central big sub component -->
						<div class="style-news-item featured-item proportional-height">
							<div class="item-inner-wrapper">
								<div class="image-wrapper-proportional-height">
									<div class="image-wrapper">
										<a
											href="/wedding/hall">
											<img src="${pageContext.request.contextPath}/resources/images/메인홀.jpg"
											class="_loaded">
										</a>
									</div>
								</div>
								<h3 data-attribute-id="title" class="title">
									<font style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">BUSAN WEDDING HALL </font></font>
								</h3>

								<div class="link">
									<a data-story-link=""
										href="/wedding/hall"
										target="_top"><font style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">웨딩홀  </font></font></a>
								</div>
							</div>
						</div>

						<!-- Homepage Style and News (Normal) - Even -->
						<div class="style-news-item normal-item even">
							<div class="item-inner-wrapper">
								<div class="image-wrapper">
									<a
										href="/wedding/studio">
										<img src="${pageContext.request.contextPath}/resources/images/44.png"
										class="_loaded">
									</a>
								</div>
								<h3 class="title">
									<font style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">BUSAN WEDDING STUDIO</font></font>
								</h3>

								<div class="link">
									<a data-story-link=""
										href="/wedding/studio"
										target="_top"><font style="vertical-align: inherit;"><font
											style="vertical-align: inherit;">웨딩스튜디오 </font></font></a>
								</div>
							</div>

						</div>
						<!-- Homepage Style and News (Video) - 2nd -->
						<div class="style-news-item normal-item odd">
							<div class="item-inner-wrapper">
								<div class="image-wrapper">
									<a
										href="/wedding/send">
										<img alt="" data-story-image=""
										src="${pageContext.request.contextPath}/resources/images/메인청첩장.png"
										class="_loaded">
									</a>
								</div>
								<h3 class="title">
									<font style="vertical-align: inherit;"><font
										style="vertical-align: inherit;">WEDDING LETTER</font></font>
								</h3>

								<div class="link">
									<a data-story-link=""
										href="/wedding/send"
										target="_top"><font style="vertical-align: inherit;"><font
											style="vertical-align: inherit;"> 온라인 청첩장 </font></font></a>
								</div>
							</div>

						</div>
					</div>
				</section> 



				<!-- .style-news-content -->

				<!-- Style and News fotter with View All Button -->
				<footer class="style-news-footer">
					<div class="view-all">
						<!-- <a data-stories-button-text="view all stories" data-stories-button-link="/int/en/st/stories" href="/int/en/st/stories" target="_top" class="button"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">모든 보기</font></font></a> -->
					</div>
				</footer>

			</div>
			<!-- .style-news-content-wrapper -->
		</section>
		<!-- .style-news -->
		<input id="numberOfComponents" type="hidden" value="6">
	</div>
</div>
<%@include file="include/footer.jsp"%>