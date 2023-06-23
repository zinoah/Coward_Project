<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- tiny-slider -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.4/tiny-slider.css"
    />
    <link
      rel="stylesheet"
      href="${contextPath}/resources/styles/css/event-detail.css"
    />
    <title>Coward | Event-Detail</title>
  </head>
  <body>
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
    <jsp:include page="/WEB-INF/views/common/nav.jsp" />

	  <main class="event-detail">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <div class="event-detail-wrapper">
              <div class="event-info">
                <h1 class="title">친구 추천하고 너도, 나도 적립금 받자!</h1>
                <span class="status">진행중</span>
                <div class="period">
                  <span class="event-date">2023/05/26</span>
                  ~
                  <span class="event-date">2023/08/26</span>
                </div>
              </div>

              <div class="event-detail-image">
                <!-- TODO: 경로 지정 주의 -->
                <img
                  src="${contextPath}/resources/assets/images/dummy/event-detail.jpg"
                  aria-hidden
                />
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>

    <div class="banner-bottom">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <a href="#">
              <div class="banner-bottom-image">
                <img
                  src="${contextPath}/resources/assets/images/coupon.svg"
                  aria-hidden
                />
              </div>
              <p class="ad-slogan">
                Coward 신규 회원가입 하고
                <br /><strong class="text-emphasis">쿠폰팩</strong>
                받으러가기 !
              </p>
            </a>
          </div>
        </div>
      </div>
    </div>

    <jsp:include page="/WEB-INF/views/common/footer.jsp" />

    <!-- 모달 :: is-open -->
    <jsp:include page="/WEB-INF/views/common/menubar.jsp" />

    <!-- jQuery 라이브러리 추가 -->
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>

    <!-- tiny-slider -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.2/min/tiny-slider.js"></script>
    <script src="${contextPath}/resources/js/slider.js"></script>
  </body>
</html>
