<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="${contextPath}/resources/styles/css/contest-detail.css"
    />
    <title>Cowrad | 콘테스트 브리핑</title>
  </head>
  <body>
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
    <jsp:include page="/WEB-INF/views/common/nav.jsp" />

    <div class="briefing-container">
      <div class="background-banner">
        <div></div>
      </div>
      <main class="contest-briefing">
        <div class="container">
          <div class="row">
            <div class="col-sm-4 col-md-12 col-lg-7">
              <div class="contest-briefing-content-box">
                <div class="contest-briefing-content-box-thumbnail">
                  <!-- FIXME: 여기 -->
                  <img src="../assets/images/contest-thumbnail.svg" />
                </div>
                <div class="contest-briefing-content-box-title lg-hidden">
                  <!-- FIXME: 여기 -->
                  <span>‘제주투어’ 관광브랜드 웹사이트 제작 공모전</span>
                </div>
                <div class="contest-briefing-content-box-profile lg-hidden">
                  <div class="avatar-32">
                    <!-- FIXME: 여기 -->
                    <img src="../assets/images/default-user-img.png" />
                  </div>
                  <!-- FIXME: 여기 -->
                  <span>엔이에스티 제주투어</span>
                </div>

                <div class="contest-briefing-content-box-tag lg-hidden">
                  <!-- FIXME: 여기 -->
                  <div class="tag-purple">프리미엄</div>
                  <div class="tag-pink">HTML</div>
                  <div class="tag-pink">JAVASCRIPT</div>
                </div>
                <div class="contest-briefing-content-box-info lg-hidden">
                  <div>
                    <p>남은 기간</p>
                    <!-- FIXME: 여기 -->
                    <p>21일</p>
                  </div>
                  <div>
                    <p>북마크 수</p>
                    <!-- FIXME: 여기 -->
                    <p>40 명</p>
                  </div>
                  <div>
                    <p>진행상태</p>
                    <!-- FIXME: 여기 -->
                    <p>진행중</p>
                  </div>
                </div>
                <div class="contest-briefing-content-box-award lg-hidden">
                  <div>
                    <p>총 상금</p>
                    <!-- FIXME: 여기 -->
                    <p>300만원</p>
                  </div>
                  <div>
                    <p>지원자</p>
                    <!-- FIXME: 여기 -->
                    <p>40명</p>
                  </div>
                </div>
                <div class="contest-briefing-content-box-button lg-hidden">
                  <button
                    class="btn-primary btn-primary contest-briefing-content-box-button-join"
                  >
                    공모전 참가하기
                  </button>
                  <!-- FIXME: 여기 -->
                  <button
                    class="btn-outlined contest-briefing-content-box-button-bookmark"
                  >
                    <i class="ic-bookmark-filled"></i>
                  </button>
                  <button
                    class="btn-outlined contest-briefing-content-box-button-link"
                  >
                    <img src="../assets/images/link-icon.svg" alt="" />
                  </button>
                </div>
                <div class="contest-briefing-content-box-briefing-title">
                  <h2>브리핑</h2>
                </div>
                <div class="contest-briefing-content-box-briefing-sub-title">
                  <h3>공모주제</h3>
                </div>
                <!-- FIXME: 여기 -->
                <div class="contest-briefing-content-box-detail">
                  교육주제 <br /><br />
                  - 조직이해, 문서작성, 직장생활 가이드<br /><br />
                  - 반도체 개념과 소자, 공정- 반도체 공정, 생산·품질, 안전·보건,
                  반도체 심화
                  <br /><br />-반도체 리포트, 설계 세미나, 팀 프로젝트
                </div>
                <div class="contest-briefing-content-box-briefing-sub-title">
                  <h3>응모 자격</h3>
                </div>
                <div class="contest-briefing-content-box-detail">
                  <!-- FIXME: 여기 -->
                  지원자격 <br /><br />

                  - 졸업까지 남은 수업연한 2년 이하인 대학생(휴학생, 졸업유예,
                  교육 기간 내 졸업예정자 포함)<br /><br />

                  - 내일배움카드 보유 또는 신규 발급이 가능한 대학생(기존
                  보유자의 경우 잔액 1원 이상)<br /><br />

                  - 기존의 K-Digital Training 과정 수강이력이 없는 분
                </div>
                <div class="contest-briefing-content-box-briefing-sub-title">
                  <h3>공모일정</h3>
                </div>
                <div class="contest-briefing-content-box-detail">
                  <!-- FIXME: 여기 -->
                  5월 3일 ~ 5월 22일
                </div>
                <div class="contest-briefing-content-box-briefing-sub-title">
                  <h3>추가 내용</h3>
                </div>
                <div class="contest-briefing-content-box-detail">
                  <!-- FIXME: 여기 -->
                  참여혜택<br /><br />

                  - SK하이닉스 전·현직 전문 강사의 고품질 반도체 직무교육<br /><br />

                  - 이력서 클리닉, 취업 컨설팅 등 단계별 취업지원 프로그램<br /><br />

                  - 월 최대 316,000원의 교육훈련비 지급
                </div>
              </div>
            </div>
          </div>
          <!-- 웹화면 간격 조절용 row -->
          <div class="row lg-only">
            <div class="col-lg-1">
              <div class="space-box"></div>
            </div>
          </div>
          <!-- 웹화면 sticky  -->
          <div class="row lg-only">
            <div class="col-sm-4 col-lg-4">
              <div class="contest-briefing-sticky-box">
                <div class="contest-briefing-sticky-box-title">
                  <!-- FIXME: 여기 -->
                  <span>‘제주투어’ 관광브랜드 웹사이트 제작 공모전</span>
                </div>
                <div class="contest-briefing-sticky-box-profile">
                  <div class="avatar-32">
                    <!-- FIXME: 여기 -->
                    <img src="../assets/images/default-user-img.png" />
                  </div>
                  <div>
                    <!-- FIXME: 여기 -->
                    <span>엔이에스티 제주투어</span>
                  </div>
                </div>
                <div class="contest-briefing-sticky-box-tag">
                  <!-- FIXME: 여기 -->
                  <div class="tag-purple">프리미엄</div>
                  <div class="tag-pink">HTML</div>
                  <div class="tag-pink">JAVASCRIPT</div>
                </div>
                <div class="contest-briefing-sticky-box-award">
                  <div>
                    <p>총 상금</p>
                    <!-- FIXME: 여기 -->
                    <p>500 만원</p>
                  </div>
                  <div>
                    <p>지원자</p>
                    <!-- FIXME: 여기 -->
                    <p>40 명</p>
                  </div>
                </div>
                <div class="contest-briefing-sticky-box-info">
                  <div>
                    <p>남은 기간</p>
                    <!-- FIXME: 여기 -->
                    <p>500 만원</p>
                  </div>
                  <div>
                    <p>북마크 수</p>
                    <!-- FIXME: 여기 -->
                    <p>40 명</p>
                  </div>
                  <div>
                    <p>진행상태</p>
                    <!-- FIXME: 여기 -->
                    <p>진행중</p>
                  </div>
                </div>
                <div class="contest-briefing-sticky-box-button">
                  <button
                    class="btn-primary contest-briefing-sticky-box-button-join"
                  >
                    공모 참가하기
                  </button>
                  <button
                    class="btn-outlined contest-briefing-sticky-box-button-bookmark"
                  >
                    <i class="ic-bookmark-filled"></i>
                  </button>
                  <button
                    class="btn-outlined contest-briefing-sticky-box-button-link"
                  >
                    <i class="ic-link"></i>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </main>
    </div>

    <!-- footer include -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
    <!-- 모달 :: is-open -->
    <jsp:include page="/WEB-INF/views/common/menubar.jsp" />
    <div id="overlay" class="overlay"></div>

    <script src="${contextPath}/resources/js/header.js"></script>
  </body>
</html>
