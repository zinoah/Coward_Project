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
                <div class="contest-attend-agree-check-box" id="policy-agree">
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
                <div class="contest-attend-agree-check-box" id="terms-agree">
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
                <div class="contest-attend-agree-check-box" id="caution-agree">
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

      <div id="policy-modal-container" class="modal-container">
        <div id="policy-modal-background" class="modal-background"></div>
        <div id="policy-modal-content" class="modal-content">
          <div id="policy-modal-content-title" class="modal-content-title">
            <h3>코워드 정책 🚀</h3>
          </div>
          <div id="policy-modal-content-info" class="modal-content-info">
            <p style="font-size: 16px">부정 콘테스트의 상세 기준</p>
            <br />
            <p>
              1. 어떠한 형식으로든지 의뢰자 및 해당 콘테스트 관계인(가족 및
              지인, 내부 직원 등)은 본인의 콘테스트에 참여할 수 없습니다.
            </p>
            <br />
            <p>
              2. 아래에 해당하는 경우 라우드소싱 내부 검열 시스템에 따라 상세
              검토가 진행됩니다.
            </p>
            ① 브리핑의 내용과 우승작의 내용이 크게 다른 경우 <br />② 다른
            참여자의 신고가 접수된 경우<br />
            ③ 5회 이하 참여자가 우승한 경우 <br />④ 다른 참여자의 아이디어 및
            디자인을 차용하려는 의구심이 드는 경우<br />
            ⑤ 기타 부정 콘테스트로 의심할만한 근거가 발견된 경우<br />
            <br />
            <p>3. 실제 부정 콘테스트로 인정되는 경우는 아래와 같습니다.</p>
            ① 어떤 형식으로든지 의뢰자가 본인의 콘테스트에 참여하는 경우 <br />②
            의뢰자의 참여작이 우승작이 된 경우<br />
            ③ 본인이 개최한 콘테스트에 등록된 타작품이나 아이디어를 침해하여
            참여한 경우
          </div>
          <div id="policy-modal-content-btn" class="modal-content-btn">
            <button
              class="btn-secondary modal-cancle-btn"
              id="policy-modal-cancle-btn"
            >
              취소
            </button>
            <button
              class="btn-primary modal-agree-btn"
              id="policy-modal-agree-btn"
            >
              동의
            </button>
          </div>
        </div>
      </div>

      <div id="terms-modal-container" class="modal-container">
        <div id="terms-modal-background" class="modal-background"></div>
        <div id="terms-modal-content" class="modal-content">
          <div id="terms-modal-content-title" class="modal-content-title">
            <h3>공모전 이용약관 🔥</h3>
          </div>
          <div id="terms-modal-content-info" class="modal-content-info">
            <p style="font-size: 16px">부정 콘테스트의 상세 기준</p>
            <br />
            <p>
              1. 어떠한 형식으로든지 의뢰자 및 해당 콘테스트 관계인(가족 및
              지인, 내부 직원 등)은 본인의 콘테스트에 참여할 수 없습니다.
            </p>
            <br />
            <p>
              2. 아래에 해당하는 경우 라우드소싱 내부 검열 시스템에 따라 상세
              검토가 진행됩니다.
            </p>
            ① 브리핑의 내용과 우승작의 내용이 크게 다른 경우 <br />② 다른
            참여자의 신고가 접수된 경우<br />
            ③ 5회 이하 참여자가 우승한 경우 <br />④ 다른 참여자의 아이디어 및
            디자인을 차용하려는 의구심이 드는 경우<br />
            ⑤ 기타 부정 콘테스트로 의심할만한 근거가 발견된 경우<br />
            <br />
            <p>3. 실제 부정 콘테스트로 인정되는 경우는 아래와 같습니다.</p>
            ① 어떤 형식으로든지 의뢰자가 본인의 콘테스트에 참여하는 경우 <br />②
            의뢰자의 참여작이 우승작이 된 경우<br />
            ③ 본인이 개최한 콘테스트에 등록된 타작품이나 아이디어를 침해하여
            참여한 경우
          </div>
          <div id="terms-modal-content-btn" class="modal-content-btn">
            <button
              class="btn-secondary modal-cancle-btn"
              id="terms-modal-cancle-btn"
            >
              취소
            </button>
            <button
              class="btn-primary modal-agree-btn"
              id="terms-modal-agree-btn"
            >
              동의
            </button>
          </div>
        </div>
      </div>

      <div id="caution-modal-container" class="modal-container">
        <div id="caution-modal-background" class="modal-background"></div>
        <div id="caution-modal-content" class="modal-content">
          <div id="caution-modal-content-title" class="modal-content-title">
            <h3>공모전 참여 주의사항 🚨</h3>
          </div>
          <div id="caution-modal-content-info" class="modal-content-info">
            <p style="font-size: 16px">부정 콘테스트의 상세 기준</p>
            <br />
            <p>
              1. 어떠한 형식으로든지 의뢰자 및 해당 콘테스트 관계인(가족 및
              지인, 내부 직원 등)은 본인의 콘테스트에 참여할 수 없습니다.
            </p>
            <br />
            <p>
              2. 아래에 해당하는 경우 라우드소싱 내부 검열 시스템에 따라 상세
              검토가 진행됩니다.
            </p>
            ① 브리핑의 내용과 우승작의 내용이 크게 다른 경우 <br />② 다른
            참여자의 신고가 접수된 경우<br />
            ③ 5회 이하 참여자가 우승한 경우 <br />④ 다른 참여자의 아이디어 및
            디자인을 차용하려는 의구심이 드는 경우<br />
            ⑤ 기타 부정 콘테스트로 의심할만한 근거가 발견된 경우<br />
            <br />
            <p>3. 실제 부정 콘테스트로 인정되는 경우는 아래와 같습니다.</p>
            ① 어떤 형식으로든지 의뢰자가 본인의 콘테스트에 참여하는 경우 <br />②
            의뢰자의 참여작이 우승작이 된 경우<br />
            ③ 본인이 개최한 콘테스트에 등록된 타작품이나 아이디어를 침해하여
            참여한 경우
          </div>
          <div id="caution-modal-content-btn" class="modal-content-btn">
            <button
              class="btn-secondary modal-cancle-btn"
              id="caution-modal-cancle-btn"
            >
              취소
            </button>
            <button
              class="btn-primary modal-agree-btn"
              id="caution-modal-agree-btn"
            >
              동의
            </button>
          </div>
        </div>
      </div>

      <script src="${contextPath}/resources/js/header.js"></script>
      <script src="${contextPath}/resources/js/contest-attend-agree.js"></script>
    </body>
  </html>
</a%@>
