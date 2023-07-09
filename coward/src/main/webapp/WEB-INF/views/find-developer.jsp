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
      href="https://unpkg.com/placeholder-loading/dist/css/placeholder-loading.min.css"
    />
    <link
      rel="stylesheet"
      href="${contextPath}/resources/styles/css/find-developer.css"
    />
    <title>Coward | 개발자 찾기</title>
  </head>
  <body>
    <!-- 헤더와 공통 네비 -->
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
    <jsp:include page="/WEB-INF/views/common/nav.jsp" />

    <div class="banner-top">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <div class="banner-top-wrapper">
              <div class="banner-info">
                <h3 class="main-title">어떤 전문가를 찾으세요?</h3>
                <p class="sub-title">검증된 개발자를 한눈에 찾아보세요!</p>
                <p class="sub-title">분야별 개발자를 골라볼수 있습니다🔥</p>
              </div>
              <div class="banner-image">
                <img
                  src="${contextPath}/resources/assets/images/banner-rocket.svg"
                  aria-hidden
                />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <main class="find-developer">
      <div class="container">
        <div class="row">
          <div class="stack-box">
            <div class="stack-btn">
              <input
                id="all"
                type="radio"
                name="userStack"
                value="all"
                checked
              />
              <label for="all">ALL</label>
            </div>

            <div class="stack-btn">
              <input id="front" type="radio" name="userStack" value="front" />
              <label for="front">FE</label>
            </div>

            <div class="stack-btn">
              <input id="back" type="radio" name="userStack" value="back" />
              <label for="back">BE</label>
            </div>

            <div class="stack-btn">
              <input id="full" type="radio" name="userStack" value="full" />
              <label for="full">FULL</label>
            </div>
          </div>
        </div>

        <div id="devListRow" class="row">
          <c:forEach var="devList" items="${devList}">
            <div class="col-sm-4 col-md-6 col-lg-4">
              <form
                id="cr-form"
                method="POST"
                action="${contextPath}/chat/openChatRoom"
              >
                <div class="developer-card">
                  <div class="developer-profile">
                    <div class="profile-img avatar">
                      <img src="${contextPath}/${devList.profileImg}" />
                    </div>

                    <div class="developer-info">
                      <div class="developer-title">
                        <p class="developer-nick">${devList.memberNick}</p>
                        <div class="developer-type">${devList.stack}</div>
                      </div>
                      <p class="developer-oneline">${devList.slogan}</p>
                    </div>
                  </div>
                  <div class="developer-record">
                    <div>
                      <span>총 수익</span>
                      <p>${devList.totalPrice}만원</p>
                    </div>
                    <div>
                      <span>우승</span>
                      <p>${devList.victoryCount}회</p>
                    </div>

                    <div>
                      <span>총 참가</span>
                      <p>${devList.attendCount}건</p>
                    </div>
                  </div>

                  <div>
                    <div class="developer-chat-btn">
                      <a
                        class="profile-btn btn-primary btn-32"
                        href="${contextPath}/mypage/info/${devList.memberNo}"
                      >
                        프로필 보기
                      </a>

                      <button
                        type="submit"
                        class="chat-button btn-primary btn-32"
                      >
                        채팅 하기
                      </button>
                    </div>

                    <c:choose>
                      <c:when
                        test="${ sessionScope.loginMember.memberType == 'C' }"
                      >
                        <button
                          id="like-btn"
                          class="like-btn ${likedList.contains(devList.memberNo) ? 'is-active' : ''}"
                          type="button"
                          onclick="clickLikeBtn('${empty sessionScope.loginMember ? null : sessionScope.loginMember.memberNo}', ${devList.memberNo}, this)"
                        >
                          <label for="like-btn"
                            ><i class="ic-like-filled"></i>
                          </label>
                        </button>
                      </c:when>
                    </c:choose>
                  </div>
                </div>
              </form>
            </div>
          </c:forEach>
        </div>
        <div class="target"></div>
      </div>
    </main>
    <!-- 푸터 -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />

    <jsp:include page="/WEB-INF/views/common/menubar.jsp" />

    <div id="overlay" class="overlay"></div>

    <!-- jQuery 라이브러리 추가 -->
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>

    <script>
      const contextPath = "${contextPath}";

      let loginMemberNo = null;

      const loginMemberType = "${sessionScope.loginMember.memberType}";

      <c:if test="${not empty sessionScope.loginMember and not empty sessionScope.loginMember.memberNo}">
        loginMemberNo = ${sessionScope.loginMember.memberNo};
      </c:if>;

      console.log("loginMemberNo :: " + loginMemberNo);
      console.log(
        "loginMemberNo :: " +
          loginMemberType +
          " and typeof :: " +
          typeof loginMemberType
      );
    </script>
    <script src="${contextPath}/resources/js/header.js"></script>
    <script src="${contextPath}/resources/js/find-developer.js"></script>
  </body>
</html>
