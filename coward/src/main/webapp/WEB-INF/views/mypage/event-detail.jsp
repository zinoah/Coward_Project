<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

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
                <h1 class="title">${event.eventTitle}</h1>

                <c:choose>
                  <c:when test="${event.statusFl == 'Y'}">
                    <span class="status is-active">진행중</span>
                  </c:when>
                  <c:when test="${event.statusFl == 'N'}">
                    <span class="status">종료</span>
                  </c:when>
                </c:choose>

                <div class="period">
                  <span class="event-date">${event.createDate}</span>
                  ~
                  <span class="event-date">${event.endDate}</span>
                </div>
              </div>

              <div class="event-detail-image">
                <img src="${contextPath}/${event.eventContent}" aria-hidden />
              </div>
            </div>
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
