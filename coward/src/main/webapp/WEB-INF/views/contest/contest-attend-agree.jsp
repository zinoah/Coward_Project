<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<a%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!DOCTYPE html>
  <html lang="ko">
    <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <link
        rel="stylesheet"
        href="${contextPath}/resources/styles/css/contest-attend-agree.css"
      />
      <title>Coward | 공모전 참가하기</title>
    </head>
    <body>
      <jsp:include page="/WEB-INF/views/common/header.jsp" />
      <jsp:include page="/WEB-INF/views/common/nav.jsp" />

      <section class="banner">
        <div class="container">
          <div class="row">
            <div class="col-sm-4">
              <div class="banner-wrapper">
                <div class="banner-text-box">
                  <div class="banner-text-box-inner">
                    <div class="banner-text-box-day">
                      <div class="tag-blue">
                        <p>${contest.dueDate}일</p>
                      </div>
                    </div>
                    <div class="banner-text-box-title">
                      <p>${contest.contestTitle}</p>
                    </div>
                    <div class="banner-text-box-reward">
                      <div>
                        <p>총 상금</p>
                      </div>
                      <div>
                        <p>${contest.price}만원</p>
                      </div>
                    </div>
                  </div>
                  <div class="banner-button-box sm-hidden">
                    <a
                      href="../detail/${contest.contestNo}"
                      class="btn-outlined btn-40"
                      >브리핑 보러가기</a
                    >
                  </div>
                </div>
                <div class="banner-button-box sm-only">
                  <a href="#" class="btn-outlined btn-40">브리핑 보러가기</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <main class="contest-attend-agree">
        <div class="container">
          <div class="row">
            <div class="col-sm-4">
              <div class="contest-attend-agree-title-wrapper">
                <p>콘테스트 참여 약관 동의</p>
                <p>콘테스트 참여를 위해 아래 내용을 꼭 확인해 주세요.</p>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-4">
              <div class="contest-attend-agree-check-wrapper">
                <div class="contest-attend-agree-check-box">
                  <label id="policy-agree-check">
                    <i class="ic-check"></i>
                    <input
                      type="checkbox"
                      id="policy-agree-checkbox"
                      style="display: none"
                    />
                  </label>
                  <div>
                    <p>코워드 정책</p>
                  </div>
                </div>
                <div class="contest-attend-agree-check-box">
                  <label id="terms-agree-check">
                    <i class="ic-check"></i>
                    <input
                      type="checkbox"
                      id="terms-agree-checkbox"
                      style="display: none"
                    />
                  </label>
                  <div>
                    <p>공모전 이용약관</p>
                  </div>
                </div>
                <div class="contest-attend-agree-check-box">
                  <label id="caution-agree-check">
                    <i class="ic-check"></i>
                    <input
                      type="checkbox"
                      id="caution-agree-checkbox"
                      style="display: none"
                    />
                  </label>
                  <div>
                    <p>공모전 참여 주의사항</p>
                  </div>
                </div>
                <div class="contest-attend-agree-all-check">
                  <label id="all-agree-check">
                    <i class="ic-check"></i>
                    <input
                      type="checkbox"
                      id="all-agree-checkbox"
                      style="display: none"
                    />
                  </label>
                  <div>
                    <p>약관에 모두 동의합니다.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-4">
              <div class="contest-attend-agree-button-wrapper">
                <div>
                  <p>
                    콘테스트 참여 약관 사항을 모두 확인했으며, 해당 내용에 모두
                    동의합니다.
                  </p>
                </div>
                <div>
                  <a
                    href="../attendForm/${contest.contestNo}"
                    class="btn-secondary btn-32"
                    >동의함</a
                  >
                </div>
              </div>
            </div>
          </div>
        </div>
      </main>

      <!-- footer include -->
      <jsp:include page="/WEB-INF/views/common/footer.jsp" />
      <!-- 모달 :: is-open -->
      <jsp:include page="/WEB-INF/views/common/menubar.jsp" />
      <div id="overlay" class="overlay"></div>

      <script src="${contextPath}/resources/js/header.js"></script>
      <script src="${contextPath}/resources/js/contest-attend-agree.js"></script>
    </body>
  </html>
</a%@>
