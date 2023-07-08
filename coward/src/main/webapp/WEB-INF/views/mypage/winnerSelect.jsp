<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Coward | 공모전 관리</title>

    <link
      rel="stylesheet"
      href="${contextPath}/resources/styles/css/winnerSelect.css"
    />

    <link
      rel="stylesheet"
      href="${contextPath}/resources/styles/css/contest-form-modal.css"
    />
  </head>

  <body>
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
    <jsp:include page="/WEB-INF/views/common/nav.jsp" />

    <div class="banner-top sm-hidden">
      <img
        src="${contextPath}/resources/assets/images/mypage-banner.png"
        aria-hidden
      />
    </div>

    <main class="contest-top">
      <div class="container">
        <div class="row">
          <c:forEach var="contest" items="${contest}">
            <div class="col-sm-4 sm-only">
              <h3>${contest.contestTitle}</h3>
            </div>

            <div class="col-md-6 col-lg-4 sm-hidden">
              <h2>${contest.contestTitle}</h2>
            </div>

            <div class="col-md-6 col-lg-8 sm-hidden">
              <div class="status">
                <p>${contest.conStatus}</p>
              </div>
            </div>

            <div class="col-sm-2">
              <h6>남은기간 &nbsp; 참가인원 &nbsp;</h6>
              <pre>${contest.dueDate}     ${contest.attendCount}   </pre>
            </div>

            <div class="col-sm-1 sm-only">
              <div class="status">
                <p>${contest.conStatus}</p>
              </div>
            </div>
          </c:forEach>
        </div>
      </div>
    </main>

    <main class="contest">
      <div class="container">
        <div class="row">
          <c:if test="${not empty member}">
            <c:forEach var="member" items="${member}">
              <div class="col-sm-4 col-md-6 col-lg-4">
                <div
                  class="card"
                  onclick="winnerCardClick('${member.memberNo}')"
                >
                  <div class="profile-section">
                    <img
                      src="${contextPath}/${member.profileImg}"
                      name="profile-image"
                    />
                    <div class="profile-div">
                      <div class="profile-name-div">
                        <h4 class="profile-name">${member.memberNick}</h4>
                        <div class="coding-type">${member.stack}</div>
                      </div>
                      <div class="one-line-intro">${member.slogan}</div>
                    </div>
                  </div>

                  <div class="profile-button-wrapper">
                    <button
                      type="button"
                      class="btn-40 btn-outlined checkFormBtn"
                      onclick="getMemberNo('${member.memberNo}')"
                    >
                      제출품 보기
                    </button>
                    <button class="btn-40 btn-primary">채팅하기</button>
                  </div>
                </div>
              </div>
            </c:forEach>
          </c:if>

          <c:if test="${empty member}">
            <div class="no-participants-msg">참가자가 없습니다.</div>
          </c:if>
        </div>
      </div>

      <div class="col-sm-4">
        <div class="contest-button-wrapper">
          <button class="btn-secondary">심사완료</button>
        </div>
      </div>
    </main>

    <div class="modal">
      <div class="background">
        <div class="window">
          <div class="popup">
            <div class="intro">
              <div>
                <h5 class="simple-intro-title">
                  <p>간단 설명</p>
                </h5>
                <div class="intro-input">
                  <textarea rows="4" cols="40" style="resize: none">
${contestAttend.description}</textarea
                  >
                </div>

                <h5>github 주소</h5>
                <div class="github-input">${contestAttend.githubAddress}</div>

                <!--
                <h5>사용 기술</h5>
                <div class="skill-box">
                  <div class="my-skill">Java Script</div>
                  <div class="my-skill">CSS</div>
                  <div class="my-skill">Java</div>
                  <div class="my-skill">Spring</div>
                </div>-->

                <div class="fileBtn">
                  <a href="${contestAttend.pptFile}" download="contest">
                    <button type="button" class="btn-primary btn-32">
                      File Download
                    </button>
                  </a>
                </div>
              </div>
            </div>

            <div class="button-wrapper">
              <button class="btn-32 btn-primary" id="deleteFormBtn">
                확인
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- 푸터 -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
      const contextPath = "${contextPath}";
    </script>
    <script>
      const contestNo = "${contestNo}";
    </script>

    <script src="${contextPath}/resources/js/winnerSelect.js"></script>
  </body>
</html>
