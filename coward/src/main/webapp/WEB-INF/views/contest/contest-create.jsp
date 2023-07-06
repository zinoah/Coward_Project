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
      href="${contextPath}/resources/styles/css/contest-create.css"
    />
    <!-- sweet alert -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css"
    />
    <title>Coward | 콘테스트를 만들어보세요</title>
  </head>
  <body>
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
    <jsp:include page="/WEB-INF/views/common/nav.jsp" />
    <div class="create-container">
      <div class="background-banner">
        <div></div>
      </div>
      <main class="contest-create">
        <div class="container">
          <div class="row">
            <div class="col-sm-4">
              <form action="create" method="post" enctype="multipart/form-data">
                <div class="contest-create-wrapper">
                  <div class="contest-create-form">
                    <div class="contest-create-form-title">
                      <div>
                        <h3>👉 어떤 공모전 인가요?</h3>
                      </div>
                      <div class="contest-create-form-title-tooltip-link">
                        <i class="ic-question-circle"></i>
                        <div class="contest-create-form-title-tooltip-board">
                          <div>
                            <span> 아래 브리핑 예시를 참고해보세요! </span>
                          </div>
                          <div>
                            <p>
                              의뢰자님 설명이 세부적이고 명확할수록, 마음에 드는
                              공모전이 등록될 확률이 높아집니다.
                            </p>
                            <p>
                              작성이 어려운 경우 아래 기준으로 천천히 작성해
                              보세요 😄
                            </p>
                            <br />
                            <p>
                              *공모 주제 : 원하는 스타일이 명확할 경우, 최대한
                              상세하게 적어주시는게 좋아요.
                            </p>
                            <p>
                              *응모 자격 : (ex. 졸업까지 남은 수업연한 2년
                              이하인 대학생(휴학생, 졸업유예, 교육 기간 내
                              졸업예정자 포함 등)
                            </p>
                            <br />
                            <p>
                              [참고 사항]- 0자 내외로 작성해 주세요!(ex.
                              띄어쓰기 포함 여부 등 체크) - 다른 기업의 카피와
                              동일하지 않아야 합니다.
                            </p>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="contest-create-form-inner">
                      <div class="contest-create-form-contest-title">
                        <div class="contest-create-form-inner-section-title">
                          <span>제목</span><span>*</span>
                        </div>
                        <div>
                          <input
                            type="text"
                            placeholder="공모전 제목을 입력하세요"
                            id="cp-title-input"
                            name="contestTitle"
                            required
                          />
                        </div>
                      </div>
                      <div class="contest-create-form-type">
                        <div class="contest-create-form-inner-section-title">
                          <span>타입</span><span>*</span>
                        </div>
                        <div>
                          <select name="typeNo" id="contest-type" required>
                            <option value="">선택하세요</option>
                            <option value="1">웹</option>
                            <option value="2">앱</option>
                            <option value="3">모바일</option>
                            <option value="4">게임</option>
                          </select>
                        </div>
                      </div>
                      <div class="contest-create-form-subject">
                        <div class="contest-create-form-inner-section-title">
                          <span>공모 주제</span><span>*</span>
                        </div>
                        <div>
                          <textarea
                            maxlength="100"
                            placeholder="100자이내로 입력하세요"
                            id="subject-textarea"
                            name="subject"
                            required
                          ></textarea>
                        </div>
                      </div>
                      <div class="contest-create-form-qualification">
                        <div class="contest-create-form-inner-section-title">
                          <span>응모 자격</span><span>*</span>
                        </div>
                        <div>
                          <textarea
                            maxlength="500"
                            placeholder="500자이내로 입력하세요"
                            id="qualification-textarea"
                            name="qualification"
                            required
                          ></textarea>
                        </div>
                      </div>
                      <div class="contest-create-form-note">
                        <div class="contest-create-form-inner-section-title">
                          <span>참고 사항</span><span>*</span>
                        </div>
                        <div>
                          <textarea
                            maxlength="500"
                            placeholder="500자이내로 입력하세요"
                            id="note-textarea"
                            name="addInfo"
                            required
                          ></textarea>
                        </div>
                      </div>
                      <div class="contest-create-form-date">
                        <div class="contest-create-form-inner-section-title">
                          <span>종료 날짜</span><span>*</span>
                        </div>
                        <div>
                          <input
                            type="date"
                            id="date-input"
                            name="endDate"
                            required
                          />
                        </div>
                      </div>
                      <div class="contest-create-form-skill">
                        <div class="contest-create-form-inner-section-title">
                          <span>요구 기술</span><span>*</span>
                        </div>
                        <div>
                          <label class="tag-gray">
                            JAVA
                            <input type="checkbox" name="skill" value="JAVA" />
                          </label>
                          <label class="tag-gray"
                            >Spring
                            <input
                              type="checkbox"
                              name="skill"
                              value="Spring"
                            />
                          </label>
                          <label class="tag-gray"
                            >Spring Boot
                            <input
                              type="checkbox"
                              name="skill"
                              value="Spring Boot"
                            />
                          </label>
                          <label class="tag-gray"
                            >PHP
                            <input type="checkbox" name="skill" value="PHP" />
                          </label>
                          <label class="tag-gray"
                            >Oracle
                            <input
                              type="checkbox"
                              name="skill"
                              value="Oracle"
                            />
                          </label>
                          <label class="tag-gray"
                            >MySQL
                            <input type="checkbox" name="skill" value="MySql" />
                          </label>
                          <label class="tag-gray"
                            >Python
                            <input
                              type="checkbox"
                              name="skill"
                              value="Python"
                            />
                          </label>
                          <label class="tag-gray"
                            >Kotlin
                            <input
                              type="checkbox"
                              name="skill"
                              value="Kotlin"
                            />
                          </label>
                          <label class="tag-gray"
                            >Swift
                            <input
                              type="checkbox"
                              name="skill"
                              value="Swift "
                            />
                          </label>
                          <label class="tag-gray"
                            >C++
                            <input type="checkbox" name="skill" value="C++" />
                          </label>
                          <label class="tag-gray"
                            >C#
                            <input type="checkbox" name="skill" value="C#" />
                          </label>
                          <label class="tag-gray"
                            >HTML
                            <input type="checkbox" name="skill" value="HTML" />
                          </label>
                          <label class="tag-gray"
                            >CSS
                            <input type="checkbox" name="skill" value="CSS" />
                          </label>
                          <label class="tag-gray"
                            >JavaScript
                            <input
                              type="checkbox"
                              name="skill"
                              value="JavaScript"
                            />
                          </label>
                          <label class="tag-gray"
                            >jQuery
                            <input
                              type="checkbox"
                              name="skill"
                              value="jQuery"
                            />
                          </label>
                          <label class="tag-gray"
                            >Vue.js
                            <input
                              type="checkbox"
                              name="skill"
                              value="Vue.js"
                            />
                          </label>
                          <label class="tag-gray"
                            >React
                            <input type="checkbox" name="skill" value="React" />
                          </label>
                          <label class="tag-gray"
                            >Node.js
                            <input
                              type="checkbox"
                              name="skill"
                              value="Node.js"
                            />
                          </label>
                        </div>
                      </div>
                      <div class="contest-create-form-thumbnail">
                        <div class="contest-create-form-inner-section-title">
                          <span>썸네일</span><span>*</span>
                        </div>
                        <div>
                          <div>jpg, gif 파일만 등록할 수 있습니다.</div>
                          <div>
                            <label class="btn-primary">
                              파일 선택
                              <input
                                type="file"
                                id="thumbnail-input"
                                name="thumbnail"
                                accept=".gif, .jpg"
                              />
                            </label>
                          </div>
                        </div>
                      </div>
                      <div class="contest-create-form-reward">
                        <div class="contest-create-form-inner-section-title">
                          <span>상금</span><span>*</span>
                        </div>
                        <div class="contest-create-form-reward-price-box">
                          <div class="price-bar">
                            <input
                              type="range"
                              id="price-bar"
                              min="100"
                              max="1000"
                              step="50"
                              value="100"
                            />
                          </div>
                          <div class="price-box">
                            <div class="price-box-inner-box">
                              <div class="sm-hidden">
                                <span>🏅 우승</span>
                              </div>

                              <div>
                                <div class="reward-price">
                                  <input type="text" id="price" value="100" />
                                </div>
                                <span>만원</span>
                              </div>
                            </div>
                          </div>
                          <div class="price-total">
                            <div>
                              <span>
                                <i class="ic-trophy"></i>
                              </span>
                              <span>총 상금</span>
                              <input
                                type="number"
                                id="result-price"
                                name="price"
                                value="100"
                                required
                              />
                              <span>만원</span>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="contest-create-form-promotion-products">
                        <div class="contest-create-form-inner-section-title">
                          <span>상품 선택</span><span>*</span>
                        </div>
                        <div>
                          <div id="general" class="promotion-product">
                            <div>
                              <span>일반형</span>
                            </div>
                            <div>
                              <div>
                                <i class="ic-check-small"></i>
                                <span>하이라이트 기능</span>
                              </div>
                              <div>
                                <i class="ic-check-small"></i>
                                <span>홍보배너 게재 가능</span>
                              </div>
                              <div>
                                <i class="ic-check-small"></i>
                                <span>상단 노출 옵션 가능</span>
                              </div>
                              <div>
                                <i class="ic-cross-small"></i>
                                <span>SNS 홍보 선택 불가</span>
                              </div>
                              <div>
                                <i class="ic-cross-small"></i>

                                <span>상품 환불 불가</span>
                              </div>
                            </div>
                            <div class="medal">
                              <img
                                src="${contextPath}/resources/assets/images/general-medal.svg"
                              />
                            </div>
                            <input
                              type="radio"
                              name="adNo"
                              value="1"
                              style="display: none"
                            />
                          </div>
                          <div id="advanced" class="promotion-product">
                            <div>
                              <span>고급형</span>
                            </div>
                            <div>
                              <div>
                                <i class="ic-check-small"></i>
                                <span>하이라이트 기능</span>
                              </div>
                              <div>
                                <i class="ic-check-small"></i>
                                <span>홍보배너 게재 가능</span>
                              </div>
                              <div>
                                <i class="ic-check-small"></i>
                                <span>상단 노출 옵션 가능</span>
                              </div>
                              <div>
                                <i class="ic-check-small"></i>
                                <span>SNS 홍보 선택 가능</span>
                              </div>
                              <div>
                                <i class="ic-cross-small"></i>
                                <span>상품 환불 불가</span>
                              </div>
                            </div>
                            <div class="medal">
                              <img
                                src="${contextPath}/resources/assets/images/advanced-medal.svg"
                              />
                            </div>
                            <input
                              type="radio"
                              name="adNo"
                              value="2"
                              style="display: none"
                            />
                          </div>
                          <div id="premium" class="promotion-product">
                            <div>
                              <span>프리미엄</span>
                            </div>
                            <div>
                              <div>
                                <i class="ic-check-small"></i>
                                <span>하이라이트 기능</span>
                              </div>
                              <div>
                                <i class="ic-check-small"></i>
                                <span>홍보배너 게재 가능</span>
                              </div>
                              <div>
                                <i class="ic-check-small"></i>
                                <span>상단 노출 옵션 가능</span>
                              </div>
                              <div>
                                <i class="ic-check-small"></i>
                                <span>SNS 홍보 선택 가능</span>
                              </div>
                              <div>
                                <i class="ic-check-small"></i>
                                <span>상품 환불 가능</span>
                              </div>
                            </div>
                            <div class="medal">
                              <img
                                src="${contextPath}/resources//assets/images/premium-medal.svg"
                              />
                            </div>
                            <input
                              type="radio"
                              name="adNo"
                              value="3"
                              style="display: none"
                            />
                          </div>
                        </div>
                      </div>
                      <div class="contest-create-form-btn lg-hidden">
                        <button
                          class="btn-primary btn-40 submit-btn"
                          type="submit"
                          style="display: none"
                        >
                          확인
                        </button>
                        <button
                          class="btn-primary btn-40 payment-btn"
                          type="button"
                          onclick="requestPay()"
                        >
                          결제하기
                        </button>
                      </div>
                    </div>
                  </div>

                  <!-- 웹화면 sticky -->
                  <div class="contest-create-summary lg-only">
                    <div class="contest-create-summary-sticky-box">
                      <div class="contest-create-summary-sticky-box-title">
                        <h3>공모전 요약</h3>
                      </div>
                      <div class="contest-create-summary-sticky-box-thumbnail">
                        <img
                          src="${contextPath}/resources/assets/images/dummy/contest-thumbnail/default-contest-thumbnail.png"
                          id="thumbnail-image"
                          accept="image/jpeg,.png"
                        />
                      </div>
                      <div class="contest-create-summary-sticky-box-date">
                        <span>기간</span>
                        <span id="start-date"></span>
                        <span>~</span>
                        <span id="end-date"></span>
                      </div>
                      <div class="contest-create-summary-sticky-box-price">
                        <div
                          class="contest-create-summary-sticky-box-price-detail"
                        >
                          <div>
                            <span>공모전 상금</span>
                            <span>
                              <span id="sticky-box-price">0</span>
                              <span>만원</span>
                            </span>
                          </div>
                          <div>
                            <span>상품</span>
                            <span>
                              <span id="sticky-box-product">0</span>
                              <span>만원</span>
                            </span>
                          </div>
                        </div>
                        <div
                          class="contest-create-summary-sticky-box-price-total"
                        >
                          <span>총 금액</span>
                          <span>
                            <span id="sticky-box-total-price">0</span>
                            <span>만원</span>
                          </span>
                        </div>
                        <div
                          class="contest-create-summary-sticky-box-price-btn"
                        >
                          <button
                            class="btn-primary btn-40 submit-btn"
                            id="submit-btn"
                            type="submit"
                            style="display: none"
                          >
                            확인
                          </button>
                          <button
                            class="btn-primary btn-40"
                            type="button"
                            onclick="requestPay()"
                          >
                            결제하기
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </main>
    </div>

    <!-- 결제 정보 넘겨줄 parameter -->
    <span id="user-num" style="display: none">${loginMember.memberNo}</span>
    <span id="user-id" style="display: none">${loginMember.memberId}</span>
    <span id="user-name" style="display: none">${loginMember.memberNick}</span>
    <span id="user-phone" style="display: none">010-4147-0126</span>

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
    <!-- iamport API  -->
    <script src="https://cdn.iamport.kr/v1/iamport.js"></script>
    <!-- sweet alert -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>

    <script src="${contextPath}/resources/js/contest-create.js"></script>
    <script src="${contextPath}/resources/js/header.js"></script>

    <script>
      const contextPath = "${contextPath}";
    </script>
  </body>
</html>
