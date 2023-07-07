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
      href="${contextPath}/resources/styles/css/login.css"
    />
    <script
      src="https://kit.fontawesome.com/e5fede6c09.js"
      crossorigin="anonymous"
    ></script>
    <title>Coward | 로그인</title>
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-sm-4">
          <div class="login-wrapper">
            <img
              src="${contextPath}/resources/assets/images/login-bg.svg"
              class="login-bg-img lg-only"
            />
            <div class="login-box">
              <div class="logo-p-box">
                <a href="#">
                  <img
                    src="${contextPath}/resources/assets/images/home_logo.svg"
                    class="logo-img"
                  />
                </a>
                <p class="p-first">Coward에 오신 것을 환영합니다!</p>
              </div>
              <br /><br />

              <form
                action="${contextPath}/member/login"
                method="POST"
                name="login-form"
                onsubmit="return loginValidate()"
              >
                <p class="p-email">이메일</p>
                <div class="email-input-box">
                  <input
                    placeholder="example@gmail.com"
                    type="email"
                    class="input-email"
                    name="memberId"
                    value="${cookie.saveId.value}"
                  />
                </div>

                <br />
                <div class="pw-input-box">
                  <p class="p-pw">비밀번호</p>
                  <fieldset>
                    <input
                      placeholder="example@gmail.com"
                      type="password"
                      class="input-pw"
                      name="memberPw"
                    />
                    <i class="ic-eye-close"></i>
                  </fieldset>

                  <button class="login-btn">로그인</button>
                  <br />
                </div>

                <br /><br />
                <div class="saveid-findpw-wrapper">
                  <div class="save-id-wrapper">
                    <c:if test="${ !empty cookie.saveId.value}">
                      <%-- chk 변수 생성(page scope)--%>
                      <c:set var="chk" value="checked" />
                    </c:if>

                    <label class="save-id">
                      <input type="checkbox" name="saveId" ${chk} id="saveId" />
                      아이디 저장
                    </label>
                  </div>
                  <a href="${contextPath}/member/pwFind" class="pw-find"
                    >비밀번호 찾기</a
                  >
                </div>
              </form>
              <div class="line-box">
                <hr class="line1" />
                <hr class="line2" />
                <p class="p-or">또는</p>
              </div>
              <div class="simple-login-box">
                <img
                  src="${contextPath}/resources/assets/images/kakao-logo.png"
                  class="kakao-logo"
                />
                <a href="${url}">
                  <img
                    width="150"
                    src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png"
                  />
                </a>
                <button class="kakao-btn">Kakao로 계속</button>
              </div>
              <br />
              <span class="span-second">혹시 아직 회원이 아니신가요?</span>
              <a href="${contextPath}/member/join" class="join">회원가입</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- jQuery 라이브러리 추가(CDN) -->
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>
    <!-- 카카오 로그인 -->
    <script
      type="text/javascript"
      src="https://developers.kakao.com/sdk/js/kakao.min.js"
      charset="utf-8"
    ></script>
    <script type="text/javascript">
      $(document).ready(function () {
        Kakao.init("440111c11e62241cddf00f69dfcc2c14");
        Kakao.isInitialized();
      });

      function loginWithKakao() {
        Kakao.Auth.authorize({
          redirectUri: "http://localhost:8080/coward/home",
        }); // 등록한 리다이렉트uri 입력
      }
    </script>

    <script src="${contextPath}/resources/js/login.js"></script>
  </body>
</html>
