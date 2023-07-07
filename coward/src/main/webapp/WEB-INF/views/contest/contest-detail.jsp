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
    <!-- sweet alert -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css"
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
                  <img src="${contextPath}/${contest.thumbnail}" />
                </div>
                <div class="contest-briefing-content-box-title lg-hidden">
                  <span>${contest.contestTitle}</span>
                </div>
                <div class="contest-briefing-content-box-profile lg-hidden">
                  <div class="avatar-32">
                    <c:choose>
                      <c:when test="${empty contest.companyProfile}">
                        <img
                          src="${contextPath}/resources/assets/images/default-user-img.png"
                          alt="기업 프로필 사진"
                        />
                      </c:when>
                      <c:otherwise>
                        <img
                          src="${contextPath}/${contest.companyProfile}"
                          alt="기업 프로필 사진"
                        />
                      </c:otherwise>
                    </c:choose>
                  </div>
                  <span>${contest.companyNick}</span>
                </div>

                <div class="contest-briefing-content-box-tag lg-hidden">
                  <div class="tag-purple">${contest.adType}</div>
                  <c:forEach var="skill" items="${skillList}">
                    <div class="tag-pink">${skill}</div>
                  </c:forEach>
                </div>
                <div class="contest-briefing-content-box-info lg-hidden">
                  <div>
                    <p>남은 기간</p>
                    <p>${contest.dueDate}</p>
                  </div>
                  <div>
                    <p>북마크 수</p>
                    <p id="bookmarkCount">${contest.bookmarkCount}명</p>
                  </div>
                  <div>
                    <p>진행상태</p>
                    <p id="contest-status">${contest.conStatus}</p>
                  </div>
                </div>
                <div class="contest-briefing-content-box-award lg-hidden">
                  <div>
                    <p>총 상금</p>
                    <p>${contest.price} 만원</p>
                  </div>
                  <div>
                    <p>지원자</p>
                    <p>${contest.attendCount} 명</p>
                  </div>
                </div>
                <div class="contest-briefing-content-box-button lg-hidden">
                  <c:choose>
                    <c:when test="${empty sessionScope.loginMember}">
                      <a
                        class="contest-briefing-content-box-button-join"
                        id="c-type-button"
                      >
                        로그인 후 이용하세요
                      </a>
                    </c:when>
                    <c:otherwise>
                      <c:choose>
                        <c:when
                          test="${sessionScope.loginMember.memberType == 'C'}"
                        >
                          <a
                            class="contest-briefing-content-box-button-join"
                            id="c-type-button"
                          >
                            개인회원으로 로그인 하세요
                          </a>
                        </c:when>
                        <c:otherwise>
                          <a
                            href="../attendAgree/${contest.contestNo}"
                            class="btn-primary contest-briefing-content-box-button-join"
                          >
                            공모전 참가하기
                          </a>
                          <button
                            class="btn-outlined contest-briefing-content-box-button-bookmark"
                            type="button"
                            onclick="bookmark('${contest.bookmarkCount}', '${contest.contestNo}', '${sessionScope.loginMember.memberNo}')"
                          >
                            <i class="ic-bookmark-filled"></i>
                          </button>
                        </c:otherwise>
                      </c:choose>
                    </c:otherwise>
                  </c:choose>

                  <button
                    class="btn-outlined contest-briefing-content-box-button-link"
                    onclick="clip()"
                  >
                    <i class="ic-link"></i>
                  </button>
                </div>
                <div class="contest-briefing-content-box-briefing-title">
                  <h2>브리핑</h2>
                </div>
                <div class="contest-briefing-content-box-briefing-sub-title">
                  <h3>공모주제</h3>
                </div>
                <div class="contest-briefing-content-box-detail">
                  ${contest.subject}
                </div>
                <div class="contest-briefing-content-box-briefing-sub-title">
                  <h3>응모 자격</h3>
                </div>
                <div class="contest-briefing-content-box-detail">
                  ${contest.qualification}
                </div>
                <div class="contest-briefing-content-box-briefing-sub-title">
                  <h3>공모일정</h3>
                </div>
                <div class="contest-briefing-content-box-detail">
                  ${contest.createDate} ~ ${contest.endDate}
                </div>
                <div class="contest-briefing-content-box-briefing-sub-title">
                  <h3>추가 내용</h3>
                </div>
                <div class="contest-briefing-content-box-detail">
                  ${contest.addInfo}
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
                  <span>${contest.contestTitle}</span>
                </div>
                <div class="contest-briefing-sticky-box-profile">
                  <div class="avatar-32">
                    <c:choose>
                      <c:when test="${empty contest.companyProfile}">
                        <img
                          src="${contextPath}/resources/assets/images/default-user-img.png"
                          alt="기업 프로필 사진"
                        />
                      </c:when>
                      <c:otherwise>
                        <img
                          src="${contextPath}/${contest.companyProfile}"
                          alt="기업 프로필 사진"
                        />
                      </c:otherwise>
                    </c:choose>
                  </div>
                  <div>
                    <span>${contest.companyNick}</span>
                  </div>
                </div>
                <div class="contest-briefing-sticky-box-tag">
                  <div class="tag-purple">${contest.adType}</div>
                  <c:forEach var="skill" items="${skillList}">
                    <div class="tag-pink">${skill}</div>
                  </c:forEach>
                </div>
                <div class="contest-briefing-sticky-box-award">
                  <div>
                    <p>총 상금</p>
                    <p>${contest.price} 만원</p>
                  </div>
                  <div>
                    <p>지원자</p>
                    <p>${contest.attendCount} 명</p>
                  </div>
                </div>
                <div class="contest-briefing-sticky-box-info">
                  <div>
                    <p>남은 기간</p>
                    <p>${contest.dueDate}</p>
                  </div>
                  <div id="bookmark-area">
                    <p>북마크 수</p>
                    <p id="bookmarkCount">${contest.bookmarkCount}명</p>
                  </div>
                  <div>
                    <p>진행상태</p>
                    <p id="contest-status">${contest.conStatus}</p>
                  </div>
                </div>
                <div class="contest-briefing-sticky-box-button">
                  <c:choose>
                    <c:when test="${empty sessionScope.loginMember}">
                      <a
                        class="contest-briefing-content-box-button-join"
                        id="c-type-button"
                      >
                        로그인 후 이용하세요
                      </a>
                    </c:when>
                    <c:otherwise>
                      <c:choose>
                        <c:when
                          test="${sessionScope.loginMember.memberType == 'C'}"
                        >
                          <a
                            class="contest-briefing-content-box-button-join"
                            id="c-type-button"
                          >
                            개인회원으로 로그인 하세요
                          </a>
                        </c:when>
                        <c:otherwise>
                          <a
                            href="../attendAgree/${contest.contestNo}"
                            class="btn-primary contest-briefing-content-box-button-join"
                          >
                            공모전 참가하기
                          </a>
                          <button
                            class="btn-outlined contest-briefing-sticky-box-button-bookmark"
                            type="button"
                            onclick="bookmark('${contest.bookmarkCount}', '${contest.contestNo}', '${sessionScope.loginMember.memberNo}')"
                          >
                            <i class="ic-bookmark-filled"></i>
                          </button>
                        </c:otherwise>
                      </c:choose>
                    </c:otherwise>
                  </c:choose>

                  <button
                    class="btn-outlined contest-briefing-sticky-box-button-link"
                    onclick="clip()"
                  >
                    <i class="ic-link" id="contest-status"></i>
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

    <!-- jQuery 라이브러리 추가 -->
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>
    <script src="${contextPath}/resources/js/header.js"></script>
    <script src="${contextPath}/resources/js/contest-detail.js"></script>
    <!-- sweet alert -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
  </body>
</html>
