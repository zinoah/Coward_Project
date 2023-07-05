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
      href="${contextPath}/resources/styles/css/join-second.css"
    />
    <link
      rel="stylesheet"
      href="${contextPath}/resources/styles/css/agree-modal.css"
    />
    <link
      rel="stylesheet"
      href="${contextPath}/resources/styles/css/join-final.css"
    />
    <link
      rel="stylesheet"
      href="${contextPath}/resources/styles/css/join-modal.css"
    />
    <link
      rel="stylesheet"
      href="${contextPath}/resources/styles/css/join-first.css"
    />
    <title>Coward | 회원가입 - 타입선택 및 약관동의</title>
  </head>
  <body>
    <!--회원가입-->
    <form action="signUp" method="POST" id="signUp-form" name="signUp-form">
      <div class="container first-join-wrapper">
        <div class="row">
          <div class="col-sm-4">
            <div class="join-wrapper">
              <img
                src="${contextPath}/resources/assets/images/login-bg.svg"
                class="login-bg-img lg-only"
              />
              <div class="join-first-box">
                <div class="logo-p-box">
                  <a href="#">
                    <img
                      src="${contextPath}/resources/assets/images/home_logo.svg"
                      class="logo-img"
                    />
                  </a>
                  <p class="p-first">Coward에 오신 것을 환영합니다!</p>
                </div>
                <button type="button" class="join-email">
                  이메일로 가입하기
                </button>
                <div class="line-box">
                  <hr class="line1" />
                  <hr class="line2" />
                  <p class="p-or">또는</p>
                  <img
                    src="${contextPath}/resources/assets/images/goolge-logo.png"
                    class="google-logo"
                  />
                  <img
                    src="${contextPath}/resources/assets/images/kakao-logo.png"
                    class="kakao-logo"
                  />
                  <div class="join-google-box">
                    <button type="button" class="join-google">
                      Google로 간편가입
                    </button>
                  </div>
                  <div class="join-kakao-box">
                    <button type="button" class="join-kakao">
                      Kakao로 간편가입
                    </button>
                  </div>
                  <span class="question">이미 계정이 있으신가요?</span>
                  <a href="${contextPath}/member/login" class="login"
                    >로그인 하기</a
                  >
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!--이메일 가입 선택시 넘어감-->
      <div class="container join-display">
        <div class="row">
          <div class="col-sm-4">
            <div class="join-second-wrapper">
              <img
                src="${contextPath}/resources/assets/images/login-bg.svg"
                class="login-bg-img lg-only"
              />
              <div class="join-second-box">
                <div class="logo-info-box">
                  <a href="#">
                    <img
                      src="${contextPath}/resources/assets/images/home_logo.svg"
                      class="logo-img"
                    />
                  </a>
                  <span class="info">
                    다음 정보들을 입력 후 완료 버튼을 눌러주세요!
                  </span>
                </div>
                <div class="mem-type-box">
                  <span class="mem-type">회원 타입 선택</span>
                  <span class="star">*</span>
                </div>
                <div
                  onclick="onMemberTypeClick('P')"
                  class="type-box single-box"
                >
                  <div class="type-explanation-box">
                    <span class="type">개인</span>
                    <span class="type-explanation"
                      >공모전을 참가하려면 개인 회원으로 시작하세요!</span
                    >
                  </div>
                </div>
                <div
                  onclick="onMemberTypeClick('C')"
                  class="type-box company-box"
                >
                  <div class="type-explanation-box">
                    <span class="type">기업</span>
                    <span class="type-explanation"
                      >공모전을 개최하려면 기업 회원으로 시작하세요!</span
                    >
                  </div>
                </div>
                <hr class="line" />
                <div class="all-agree-wrapper">
                  <div class="all-agree">
                    <div class="chk-img">
                      <input type="checkbox" name="allAgree" id="allAgree" />
                      <label for="allAgree"></label>
                    </div>
                    <span class="all-agree-text">모두 동의하기</span>
                  </div>
                  <div class="essential-chk">
                    <div class="chk-img">
                      <input
                        type="checkbox"
                        name="essentialAgree1"
                        id="agree-1"
                      />
                      <label for="agree-1"></label>
                    </div>
                    <div class="essential-chk-content">
                      <span class="chk-explanation"
                        >회원가입 및 이용 약관 동의 (필수)</span
                      >
                      <a href="#" class="terms1">약관 보기</a>
                    </div>
                  </div>
                  <div class="essential-chk">
                    <div class="chk-img">
                      <input
                        type="checkbox"
                        name="essentialAgree2"
                        id="agree-2"
                      />
                      <label for="agree-2"></label>
                    </div>
                    <div class="essential-chk-content">
                      <span class="chk-explanation"
                        >개인정보 이용 약관 동의 (필수)</span
                      >
                      <a href="#" class="terms2">약관 보기</a>
                    </div>
                  </div>
                  <div class="essential-chk">
                    <div class="chk-img">
                      <input
                        type="checkbox"
                        name="essentialAgree3"
                        id="agree-3"
                      />
                      <label for="agree-3"></label>
                    </div>
                    <div class="essential-chk-content">
                      <span class="chk-explanation"
                        >마케팅 정보 수집 동의 (선택)</span
                      >
                      <a href="#" class="terms3">약관 보기</a>
                    </div>
                  </div>
                </div>
                <button type="button" class="next-btn">다음</button>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- 회원가입 마지막 단계 -->
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
                  <span class="final-info"> 정보 입력 마지막 단계입니다! </span>
                </div>
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
                  <span class="input-title">비밀번호</span>
                  <span class="pw-explanation1"></span>
                  <div class="btn-input-bundle pw-input-box">
                    <input
                      class="pw-input"
                      id="memberPw"
                      name="memberPw"
                      placeholder="8자리 이상, 대소문자 포함"
                      type="password"
                    />
                    <div class="eye-img">
                      <img
                        src="${contextPath}/resources/assets/images/eye.svg"
                      />
                    </div>
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
                    <div class="eye-img">
                      <img
                        src="${contextPath}/resources/assets/images/eye.svg"
                      />
                    </div>
                  </div>
                </div>
                <button type="button" class="complete-btn" onclick="onSubmit">
                  완료
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </form>

    <!-- 이용약관 모달창 -->

    <div class="agree-all-wrapper">
      <div class="agree-box1">
        <img
          src="${contextPath}/resources/assets/images/cross.svg"
          class="close1"
        />
        <br />
        <h3>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="yellow"
            >회원가입</span
          >
          및 이용 동의
        </h3>
        <br />
        <div class="agree-content-box">
          <pre class="agree-content">
            
      <strong>제 1조 목적</strong>
      이 약관은 coawrd가 제공하는 회사의 제반
      서비스 이용과 관련하여 회사와 회원과의 권리,
      의무 및 책임사항, 기타 필요한 사항을
      규정함을 목적으로 합니다.
  
      <strong>제 2조 정의</strong>
      이 약관에서 사용하는 용어의 정의는
      다음과 같습니다.
 
      ① 서비스:구현되는 단말기와 상관없이 회원이
              이용할 수 있는 회사의 제반
              서비스를 의미함
      ② 이용자:회사의 서비스에 접속해 약관에 따라
              회사가 제공하는 서비스를 받는회원 
      ③ 회원:회사의 서비스에 접속하여 이 약관에
            따라 회사와 이용계약을 체결하고 회사가
            제공하는 서비스를 이용하는 고객을 말함
      ⑤ 아이디(ID): 회원의 식별과 서비스 이용을
                  위하여 회원이 정하고 회사가
                  승인하는 이메일 주소를 의미함
      ⑥ 비밀번호:회원이 부여받은 아이디와 일치되는
               회원임을 확인, 비밀보호를 위해
               회원이 정한 문자, 숫자의 조합을
               의미.

      <strong>제 3조 약관의 게시와 개정</strong>

      ① 회사는 이 약관의 내용을 회원이 쉽게
        알 수 있도록 서비스 초기
        화면에 게시합니다.
      ② 회사는 약관의규제에관한법률, 정보통신망법
        등 관련법을 위배하지 않는 범위에서
        이 약관을 개정할 수 있습니다.
      ③ 회사가 약관을 개정할 경우에는 적용일자 및
        개정사유를 명시하여 현행약관과 함께
        제1항의 방식에 따라 그 개정약관의
        적용일자 7일 전부터 적용일자 전일까지
        공지합니다. 
      ④ 회사가 전항에 따라 개정약관을 공지 또는
        통지하면서 회원에게 30일 기간 내에
        의사표시를 하지 않으면 의사표시가 표명된
        것으로 본다는 뜻을 명확하게 공지 또는
        통지하였음에도 회원이 명시적으로 거부의
        의사표시를 하지 않은 경우
        회원이 개정약관에 동의한 것으로 봅니다.
      ⑤ 회원이 개정약관의 적용에 동의하지 않는
        경우 회사는 개정 약관의 내용을 적용할 수
        없으며, 이경우 회원은 이용계약을
        해지할 수 있습니다.
      ⑥ 새로운 서비스가 개설될 경우 별도의 명시된
       설명이 없는 한 이 약관에 따라 제공합니다.
  
      <strong>제 4조 이용계약 체결</strong>
      ① 이용계약은 회원이 되고자 하는 자가
       약관의 내용에 대하여 동의를 한 다음
       회원가입신청을 하고 회사가 이러한 신청에
       대하여 승낙함으로써 체결됩니다.
      ② 회사는 가입신청자의 신청에 대하여 서비스
      이용을 승낙함을 원칙으로 합니다.
      다만, 회사는 다음 각 호에 해당하는 신청에
      대하여는 승낙을 하지 않거나 사후에
      이용계약을 해지할 수 있습니다.
      1. 가입신청자가 이 약관에 의하여 이전에
         회원자격을 상실한 적이 있는 경우
      2. 실명이 아니거나 타인의 명의를 이용한경우
      3. 허위의 정보를 기재한 경우
      4. 14세 미만 아동이 법정대리인(부모 등)의
         동의를 얻지 아니한 경우
      ③ 제1항에 따른 신청에 있어 회사는 회원의
        종류에 따라 전문기관을 통한 실명확인 및
        본인인증을 요청할 수 있습니다.
      ④ 회사는 서비스관련설비의 여유가 없거나,
         기술상 또는 업무상 문제가 있는 경우에는
         승낙을 유보할 수 있습니다.
      ⑤ 제2항과 제4항에 따라 회원가입신청의
        승낙을 하지 아니하거나 유보한 경우,
        회사는 원칙적으로 이를 가입신청자에게
        알리도록 합니다.
      ⑥ 이용계약의 성립 시기는 회사가 가입완료를
        신청절차 상에서 표시한 시점으로 합니다.
        </pre>
        </div>
        <br /><br />
        <button class="agree-btn">동의</button>
      </div>
    </div>
    <div class="agree-all-wrapper">
      <div class="agree-box2">
        <img
          src="${contextPath}/resources/assets/images/cross.svg"
          class="close2"
        />
        <br />
        <h3>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="yellow"
            >개인정보</span
          >
          이용 동의
        </h3>
        <br />
        <div class="agree-content-box">
          <pre class="agree-content">
            
      <strong>개인정보 수집 및 이용 목적</strong>
  
      coward는 다음목적을 위해 고객의 개인정보를
      수집 및 이용합니다
  
      1. 공모전 참가신청 및 관리를 위한 개인정보
         처리
      - 공모전 참가자 정보 수집, 참가자 신분확인,
        참가 절차 관리, 공모전 결과 안내 등
      2. 공지사항, 이벤트 정보제공을 위한 개인정보
         처리
      - 이벤트안내, 마케팅활동, 서비스 업데이트 등
      3. 서비스 개선 및 고객 지원을 위한 개인정보
         처리
      - 서비스 품질개선, 고객 지원요청처리 등
  
      <strong>수집하는 개인정보 항목</strong>
  
      coward는 다음과 같은 개인정보 항목을
      수집합니다.
      - 신분증 사본 (신분증 번호 등)
  
      <strong>개인정보의 보유 및 이용기간</strong>
  
      coward는 개인정보를 수집 및 이용 목적이
      달성된 후에는 지체 없이 파기합니다. 다만,
      관련 법령에 따라 일정 기간 동안 보존해야 할
      필요가 있는 경우, 해당기간 동안 개인정보를
      안전하게 보관합니다.
  
      <strong>개인정보의 제3자 제공</strong>
  
      coward는 고객의 개인정보를 제3자에게 제공
      하지 않습니다.
      다만, 다음의 경우에는 예외로 합니다
  
      1. 공모전의 진행을 위해 공모전 주최측과의
         필요한 정보공유
      - 법적 의무의 이행 등 법률적인 의무에 따른
        정보 제공
  
      <strong>개인정보의 파기절차 및 방법</strong>
  
      coward는 개인정보의 수집 및 이용 목적이 
      달성된 후에는 지체 없이 파기하며,
      파기절차 및 방법은 다음과 같습니다.
  
      - 전자적 파일 형태의 개인정보는 안전하게
        삭제하며, 인쇄된 서류는 분쇄기를 통해
        파기
  
      <strong>개인정보 수집, 이용 동의 거부 및 철회</strong>
  
      개인정보 수집, 이용에 대해 거부할 권리가
      있으며 동의를 언제든지 철회할 수 있습니다.
  
      <strong>개인정보의 안전성 확보 조치</strong>
  
      coward는 개인정보보호법에서 요구하는 기술적
      , 관리적, 물리적 보안조치를 취하여
      개인정보의 안전성을 확보합니다.
  
      위의 약관에 동의하는 경우,  개인정보
      이용약관에 동의하신 것으로 간주합니다.
        </pre>
        </div>
        <br /><br />
        <button class="agree-btn">동의</button>
      </div>
    </div>

    <div class="agree-all-wrapper">
      <div class="agree-box3">
        <img
          src="${contextPath}/resources/assets/images/cross.svg"
          class="close3"
        />
        <br />
        <h3>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="yellow"
            >정보수집</span
          >
          이용 동의
        </h3>
        <br />
        <div class="agree-content-box">
          <pre class="agree-content">
            
      <strong>이벤트/혜택 정보 수신</strong>
            <br>
      coward 서비스 및 제휴 이벤트・혜택 등의
      정보를 휴대전화(coward앱 알림 또는 문자),
      이메일로 받을 수 있습니다. 일부 서비스
      (별개의 회원 체계 운영, 가입 후 추가
      가입하는 서비스 등)의 경우, 수신에 대해
      별도로 안내드리며 동의를 구합니다.
        </pre>
        </div>
        <br /><br />
        <button class="agree-btn">동의</button>
      </div>
    </div>

    <!-- 회원가입 축하 모달 -->
    <div class="join-all-wrapper">
      <div class="join-box">
        <img
          src="${contextPath}/resources/assets/images/check-circle.svg"
          class="check"
        />
        <br /><br />
        <pre class="pre-first">가입을 완료했어요 👏</pre>
        <button class="add-information-btn">추가 정보 입력하기</button>

        <br /><br />

        <button type="button" class="reject" onclick="location.href='home.jsp'">
          아니요. 다음에 입력할게요!
        </button>
      </div>
    </div>
    <div id="overlay" class="overlay"></div>

    <!-- jQuery 라이브러리 추가(CDN) -->
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>
    <script src="${contextPath}/resources/js/join.js"></script>
  </body>
</html>
