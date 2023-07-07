<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="${contextPath}/resources/styles/css/mypage-main-mem.css" />

<link rel="stylesheet"
	href="${contextPath}/resources/styles/css/mypage-company-editProfile.css" />
<title>Coward | 마이페이지</title>
</head>

<body>
	<!-- 헤더 -->
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<jsp:include page="/WEB-INF/views/common/nav.jsp" />

	<!-- 배너 -->
	<!-- web-box 중앙 배치 위해 -->
	<div class="full">
		<div class="banner-top sm-hidden">
			<img src="${contextPath}/resources/assets/images/mypage-banner.png" />
		</div>

		<!-- 웹 페이지 -->
		<!-- 웹에서 헤더랑 푸터 사이 간격 주기 위해 사용 -->
		<div class="empty-box">
			<!-- 네비 + 내용을 감싸는 박스(모든 페이지 크기 고정)-->
			<div class="web-box">
				<!-- 네비게이션 바 -->

				<aside>
					<nav class="category">
						<div class="container">
							<div class="row">
								<div class="col-sm-4 category-web">
									<p class="profile-mypage lg-only">마이페이지</p>
									<div class="profile lg-only">
										<div class="profile-img-box">
											<div class="profile-img avatar">
												<img
													src="${contextPath}/${loginMember.profileImg}" />
											</div>
										</div>

										<div class="profile-info">
											<p class="profile-nick">${loginMember.memberNick}</p>
										</div>
									</div>

									<ul class="category-bar">
										<li><a href="${contextPath}/mypage/companyMain">내 정보</a></li>
										<li><a href="${contextPath}/mypage/companyManagement">공모전
												관리</a></li>
										<li><a href="#">크레딧 인출</a></li>
										<li><a href="${contextPath}/mypage/companyProfile">프로필
												수정</a></li>
										<li><a href="${contextPath}/member/changePw">비밀번호 변경</a></li>
										<li><a href="${contextPath}/member/secession">회원 탈퇴</a></li>
									</ul>
								</div>
							</div>
						</div>
					</nav>
				</aside>

				<!-- 본문 시작 -->
				<main class="profile-mem">
					<div class="container">
						<div class="row">
							<div class="col-sm-4">
								<div class="profile-wrapper">
									<!------------------------- 여기서 부터 작성 --------------------------->
									<div class="mypage">
										<div class="title-wrapper lg-only">
											<p class="title">프로필 수정</p>
										</div>
										<form action="companyProfile" method="POST"
											name="company-form" enctype="multipart/form-data" >
											<div class="mypage-img-wrapper">
												<div class="ic-camera-relative">
													<div class="avatar">
														<c:if test="${empty loginMember.profileImg}">
															<img
																src="${contextPath}/resources/assets/images/default-user-img.png"
																id="profileImg" />
														</c:if>

														<c:if test="${!empty loginMember.profileImg}">
															<img src="${contextPath}/${loginMember.profileImg}"
																id="profileImg">
														</c:if>
														<label for="inputImg">
															<div class="ic-camera-wrapper">
																<input type="file" name="uploadImage" id="inputImg"
																	accept="image/*"> <i class="ic-camera"></i>
															</div>
														</label>
													</div>


												</div>
											</div>


											<input type="hidden" name="delete" id="delete" value="0">
											<!-- 삭제버튼(x)이 눌러짐을 기록하는 숨겨진 input 태그 -->
											<!-- 0 : 안눌러짐   /   1: 눌러짐 -->


											<div class="mypage-input-box-wrapper">
												<div class="mypage-input-box">
													<p>회사명</p>
													<input type="text" placeholder="회사명 입력"
														class="mypage-input" name="memberNick"
														value="${loginMember.memberNick}" />


												</div>
												<div class="mypage-input-box">

													<input type="hidden" id="loginMemberRegionNo"
														value="${loginMember.regionNo}">

													<p>지역</p>
													<select class="mypage-input" name="regionNo"
														id="regionSelect">
														<option value="1">서울</option>
														<option value="2">부산</option>
														<option value="3">대구</option>
														<option value="4">인천</option>
														<option value="5">광주</option>
														<option value="6">대전</option>
														<option value="7">울산</option>
														<option value="8">세종</option>
														<option value="9">경기</option>
														<option value="10">강원</option>
														<option value="11">충북</option>
														<option value="12">충남</option>
														<option value="13">전북</option>
														<option value="14">전남</option>
														<option value="15">경북</option>
														<option value="16">경남</option>
														<option value="17">제주</option>

													</select>

												</div>

											</div>

											<div class="textarea-box">
												<div>
													<p>소개글</p>
													<textarea cols="50" rows="10" placeholder="기업에 대해서 소개해주세요!"
														name="introduce">${loginMember.introduce}</textarea>
												</div>
											</div>

											<div class="button-wrapper">
												<button class="btn-40 btn-secondary">완료</button>
											</div>
										</form>
									</div>

									<!-- 본문 끝 -->
								</div>
							</div>
						</div>
					</div>
				</main>
			</div>
		</div>
	</div>
	<!-- 푸터 -->
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />

	<script src="${contextPath}/resources/js/mypage-company-editProfile.js"></script>

	<!-- tiny-slider -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.2/min/tiny-slider.js"></script>
	
</body>
</html>
