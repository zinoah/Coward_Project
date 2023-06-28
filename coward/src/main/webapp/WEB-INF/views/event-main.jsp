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
      href="${contextPath}/resources/styles/css/event.css"
    />
    <title>Coward | Event-Main</title>
  </head>
  <body>
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
    <jsp:include page="/WEB-INF/views/common/nav.jsp" />

    <div class="banner-top">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <div class="banner-top-wrapper">
              <div class="banner-info">
                <h3 class="main-title">
                  Coward를 사랑해주시는 <br class="sm-only" />
                  여러분들을 위한 이벤트!
                </h3>
                <p class="sub-title sm-hidden">
                  쿠폰, 참여 혜택 등 각종 기회를 놓치지 마세요!
                </p>
                <a href="#" class="banner-button btn-32 btn-primary"
                  >더 알아보기</a
                >
              </div>
              <div class="banner-image">
                <img
                  src="${contextPath}/resources/assets/images/suprise-box.svg"
                  aria-hidden
                />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <main class="event">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <h3 class="event-title">전체 이벤트 보기</h3>
          </div>
        </div>

        <div class="row">
          <!-- Note: 이벤트가 진행중인 경우 .is-active -->
          <div class="col-sm-4 col-md-6 col-lg-6">
            <!-- TODO: 경로 변경하기 -->

            <!-- status가 Y인 경우 == 진행중인 경우 -->
            <c:forEach var="event" items="eventList">
              <c:choose>
                <c:when test="${event.status} == 'Y'">
                  <a
                    class="event-item is-active"
                    href="${contextPath}/event/detail/${event.eventNo}"
                  >
                    <div class="event-item-image">
                      <img
                        src="${contextPath}/${event.eventContent}"
                        alt="이벤트 썸네일"
                      />
                    </div>

                    <div class="event-item-info">
                      <span class="status">${event.status}</span>
                      <div class="period">
                        <span class="event-date">${event.createDate}</span>
                        ~
                        <span class="event-date">${event.endDate}</span>
                      </div>
                    </div>
                  </a>
                </c:when>
              </c:choose>
            </c:forEach>
          </div>

          <!-- Note: 이벤트가 종료된 경우 -->
          <div class="col-sm-4 col-md-6 col-lg-6">
            <!-- TODO: 경로 변경하기 -->
            <a class="event-item" href="./event-detail.html">
              <div class="event-item-image">
                <img
                  src="${contextPath}/resources/assets/images/dummy/event-thumbnail.png"
                  alt="이벤트 썸네일"
                />
              </div>

              <div class="event-item-info">
                <span class="status">종료</span>
                <div class="period">
                  <span class="event-date">2023/05/26</span>
                  ~
                  <span class="event-date">2023/08/26</span>
                </div>
              </div>
            </a>
          </div>
        </div>
      </div>
    </main>

    <jsp:include page="/WEB-INF/views/common/footer.jsp" />

    <!-- 모달 :: is-open -->
    <jsp:include page="/WEB-INF/views/common/menubar.jsp" />

    <!-- jQuery 라이브러리 추가 -->
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>
  </body>
</html>
