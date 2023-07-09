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
      href="${contextPath}/resources/styles/css/join-final.css"
    />
    <title>Coward | 비밀번호 찾기</title>
  </head>
  <body>
    <div class="container join-final-display">
      <div class="row">
        <div class="col-sm-4">
          <div class="join-final-wrapper">
            <img
              src="${contextPath}/resources/assets/images/login-bg.svg"
              class="login-bg-img lg-only"
            />
            <div class="join-final-box">
              <div class="logo-final-box">
                <a href="#">
                  <img
                    src="${contextPath}/resources/assets/images/home_logo.svg"
                    class="logo-img"
                  />
                </a>
              </div>
              <form
                action="pwFind"
                method="POST"
                id="pwFind-form"
                name="pwFind-form"
              >
                <div class="email-box">
                  <span class="input-title">이메일</span>
                  <span class="email-explanation" id="emailMessage"></span>
                  <input
                    class="btn-input-bundle email-input"
                    name="memberId"
                    id="memberEmail"
                    type="text"
                    placeholder="이메일 입력"
                  />
                  <input name="memberType" type="hidden" id="memberType" />
                  <button
                    type="button"
                    class="btn-input-bundle email-cert-btn"
                    id="sendBtn"
                    autocomplete="off"
                    onclick="sendEmail()"
                    required
                  >
                    이메일 인증하기
                  </button>
                </div>
                <div class="email-cert-display">
                  <div class="email-cert-wrapper">
                    <div class="email-cert-box">
                      <span class="email-explanation"
                        >이메일로 전송된 코드를 입력해주세요.</span
                      >
                      <div class="email-cert">
                        <div class="cert-code">
                          <input
                            type="text"
                            class="cert-input"
                            mexlength="6"
                            autocomplete="off"
                            id="cNumber"
                            placeholder="인증코드 6자리 입력"
                          />
                          <span class="timer" id="cMessage"></span>
                        </div>
                        <button
                          type="button"
                          class="cert-btn"
                          id="cBtn"
                          onclick="emailCertChk()"
                        >
                          확인
                        </button>
                      </div>
                      <div class="warn-box">
                        <div class="warn-img-container">
                          <img
                            src="${contextPath}/resources/assets/images/warning-circle.svg"
                            class="warn-image"
                          />
                        </div>
                        <span class="email-explanation-1"
                          >이메일을 받지 못하셨나요?</span
                        >
                        <span
                          class="email-explanation-2"
                          onclick="sendEmail()"
                          required
                          >이메일 재전송하기</span
                        >
                      </div>
                    </div>
                  </div>
                </div>
                <div class="pw-box">
                  <span class="input-title">새 비밀번호</span>
                  <span class="pw-explanation1"></span>
                  <div class="btn-input-bundle pw-input-box">
                    <input
                      class="pw-input"
                      id="memberPw"
                      name="memberPw"
                      placeholder="8~16자리, 대소문자 포함"
                      type="password"
                    />
                    <i class="ic-eye-close eye"></i>
                  </div>
                </div>
                <div class="pw-box">
                  <span class="input-title">비밀번호 확인</span>
                  <span class="pw-explanation2"></span>
                  <div class="btn-input-bundle pw-input-box">
                    <input
                      class="pw-input-chk"
                      id="memberPwConfirm"
                      placeholder="비밀번호를 한번 더 입력해주세요!"
                      type="password"
                    />
                    <i class="ic-eye-close eye"></i>
                  </div>
                </div>
                <button type="button" class="complete-btn" onclick="onSubmit">
                  완료
                </button>
              </form>
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
    <script src="${contextPath}/resources/js/pwFind.js"></script>
  </body>
</html>
