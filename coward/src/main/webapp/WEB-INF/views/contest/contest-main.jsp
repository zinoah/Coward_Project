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
      href="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.4/tiny-slider.css"
    />
    <link
      rel="stylesheet"
      href="${contextPath}/resources/styles/css/contest-main.css"
    />

    <title>Coward | 콘테스트를 둘러보세요</title>
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
                  Coward에서 제공하는 공모전에 <br class="sm-only" />
                  지금바로 참여하세요!!
                </h3>
                <p class="sub-title sm-hidden">
                  우승자가 될 기회를 놓치지 마세요!
                </p>
              </div>
              <div class="banner-image">
                <img
                  src="${contextPath}/resources/assets/images/contest-main-banner-img.jpg"
                  aria-hidden
                />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <main class="main">
      <div class="container">
        <section class="slide-section">
          <div class="row">
            <div class="col-sm-4">
              <div class="title-wrapper">
                <h1>요즘 인기있는 공모전은?</h1>
              </div>
              <div class="slider-wrapper">
                <div class="contest-slider">
                  <c:forEach var="contest" items="${contestPopularList}">
                    <div>
                      <div class="contest-slider-card">
                        <div class="contest-slider-card-img">
                          <img src="${contextPath}/${contest.thumbnail}" />
                        </div>
                        <div class="contest-slider-card-info">
                          <div class="contest-slider-card-info-title">
                            <p>${contest.contestTitle}</p>
                          </div>
                          <div class="contest-slider-card-info-detail">
                            <p>상금</p>
                            <p>${contest.price}만원</p>
                          </div>
                          <div class="contest-slider-card-info-detail">
                            <p>남은기간</p>
                            <p>${contest.dueDate}일</p>
                          </div>
                          <div class="contest-slider-card-info-button">
                            <a
                              class="btn-outlined btn-32"
                              href="detail/${contest.contestNo}"
                            >
                              참여하러가기
                            </a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </c:forEach>
                </div>
                <div class="slider-controls">
                  <button class="control-button is-prev" type="button">
                    <i class="ic-chevron"></i>
                  </button>
                  <button class="control-button is-next" type="button">
                    <i class="ic-chevron"></i>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </section>

        <section class="middle-banner-section">
          <a href="${contextPath}/member/join">
            <div class="row">
              <div class="col-sm-4">
                <div class="banner-middle">
                  <div class="banner-middle-title">
                    <span>Coward 회원이 되어</span>
                  </div>
                  <div class="banner-middle-title">
                    <span>다양한 개발자의 도움을 받아보세요.</span>
                  </div>
                </div>
              </div>
            </div>
          </a>
        </section>

        <section class="contest-card-section">
          <div class="row">
            <div class="col-sm-4">
              <div class="title-wrapper">
                <h1>이런 공모전은 어떠세요?</h1>
              </div>
              <div class="category-button-wrapper">
                <div class="category-button-box-web lg-btn-box lg-only">
                  <button
                    class="btn-secondary lg-category-button filterBtn filter-btn-active filter-btn-active"
                    data-parameter="all"
                  >
                    전체
                  </button>
                  <button
                    class="btn-secondary lg-category-button filterBtn"
                    data-parameter="recruiting"
                  >
                    진행중
                  </button>
                  <button
                    class="btn-secondary lg-category-button filterBtn"
                    data-parameter="imminent"
                  >
                    마감임박
                  </button>
                  <button
                    class="lg-category-button btn-secondary filterBtn"
                    data-parameter="end"
                  >
                    마감
                  </button>
                </div>
                <div class="category-button-box-mobile lg-hidden">
                  <button class="filterBtn" data-parameter="all">전체</button>
                  <button class="filterBtn" data-parameter="recruiting">
                    진행중
                  </button>
                  <button class="filterBtn" data-parameter="imminent">
                    마감임박
                  </button>
                  <button class="filterBtn" data-parameter="end">마감</button>
                </div>
              </div>
            </div>
          </div>
          <div class="row" id="contestArea">
            <!-- 카드시작 -->
            <c:forEach var="contest" items="${contestList}">
              <div class="col-sm-4 col-md-4 col-lg-3">
                <a href="detail/${contest.contestNo}">
                  <div class="contest-card">
                    <div class="contest-card-title">
                      <div><span>${contest.contestTitle}</span></div>

                      <c:choose>
                        <c:when test="${contest.createDate > 1}">
                          <div></div>
                        </c:when>
                        <c:otherwise>
                          <div class="tag-yellow">new</div>
                        </c:otherwise>
                      </c:choose>
                    </div>
                    <div class="contest-card-info">
                      <div class="contest-card-info-detail">
                        <div>
                          <span>남은기간</span>
                          <c:choose>
                            <c:when test="${contest.dueDate > 0}">
                              <span>${contest.dueDate}</span>
                            </c:when>
                            <c:otherwise>
                              <span>마감</span>
                            </c:otherwise>
                          </c:choose>
                        </div>
                        <div>
                          <span>상금</span>
                          <span>${contest.price}만원</span>
                        </div>
                      </div>
                      <div class="contest-card-info-tag">
                        <div class="contest-card-info-tag-list">
                          <div class="tag-purple">${contest.adType}</div>
                          <c:forEach var="skill" items="${contest.skillList}">
                            <div class="tag-pink">${skill}</div>
                          </c:forEach>
                        </div>
                        <div class="sm-only contest-card-info-profile">
                          <div class="avatar-24">
                            <img
                              src="${contextPath}/${contest.companyProfile}"
                            />
                          </div>
                          <div><span>${contest.companyNick}</span></div>
                        </div>
                      </div>
                    </div>
                    <div class="sm-hidden contest-card-profile">
                      <div class="avatar-24">
                        <img src="${contextPath}/${contest.companyProfile}" />
                      </div>
                      <div><span>${contest.companyNick}</span></div>
                    </div>
                  </div>
                </a>
              </div>
              <!-- 카드끝 -->
            </c:forEach>
          </div>
        </section>
      </div>
    </main>

    <!-- footer include -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
    <!-- 모달 :: is-open -->
    <jsp:include page="/WEB-INF/views/common/menubar.jsp" />
    <div id="overlay" class="overlay"></div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.2/min/tiny-slider.js"></script>
    <script src="${contextPath}/resources/js/slider.js"></script>
    <script src="${contextPath}/resources/js/header.js"></script>
    <script src="${contextPath}/resources/js/contest-main.js"></script>
    <!-- jQuery -->
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>

    <Script> const contextPath = "${contextPath}"; </Script>
  </body>
</html>
