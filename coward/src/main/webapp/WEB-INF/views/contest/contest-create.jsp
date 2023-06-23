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
              <form action="#" method="post">
                <div class="contest-create-wrapper">
                  <div class="contest-create-form">
                    <div class="contest-create-form-title">
                      <div>👉 어떤 공모전 인가요?</div>
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
                      <div class="contest-create-form-company-name">
                        <div class="contest-create-form-inner-section-title">
                          <span>기업명</span><span>*</span>
                        </div>
                        <div>
                          <input
                            type="text"
                            placeholder="기업명을 입력하세요"
                          />
                        </div>
                      </div>
                      <div class="contest-create-form-type">
                        <div class="contest-create-form-inner-section-title">
                          <span>타입</span><span>*</span>
                        </div>
                        <div>
                          <input type="text" />
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
                          ></textarea>
                        </div>
                      </div>
                      <div class="contest-create-form-date">
                        <div class="contest-create-form-inner-section-title">
                          <span>종료 날짜</span><span>*</span>
                        </div>
                        <div>
                          <input type="date" value="2023-07-10" />
                        </div>
                      </div>
                      <div class="contest-create-form-skill">
                        <div class="contest-create-form-inner-section-title">
                          <span>요구 기술</span><span>*</span>
                        </div>
                        <div>
                          <label class="tag-gray" name="skill">
                            JAVA
                            <input type="checkbox" />
                          </label>
                          <label class="tag-gray" name="skill"
                            >Spring
                            <input type="checkbox" />
                          </label>
                          <label class="tag-gray" name="skill"
                            >Spring Boot
                            <input type="checkbox" />
                          </label>
                          <label class="tag-gray" name="skill"
                            >PHP
                            <input type="checkbox" />
                          </label>
                          <label class="tag-gray" name="skill"
                            >Oracle
                            <input type="checkbox" />
                          </label>
                          <label class="tag-gray" name="skill"
                            >MySQL
                            <input type="checkbox" />
                          </label>
                          <label class="tag-gray" name="skill"
                            >Python
                            <input type="checkbox" />
                          </label>
                          <label class="tag-gray" name="skill"
                            >Kotlin
                            <input type="checkbox" />
                          </label>
                          <label class="tag-gray" name="skill"
                            >Swift
                            <input type="checkbox" />
                          </label>
                          <label class="tag-gray" name="skill"
                            >C++
                            <input type="checkbox" />
                          </label>
                          <label class="tag-gray" name="skill"
                            >C#
                            <input type="checkbox" />
                          </label>
                          <label class="tag-gray" name="skill"
                            >HTML
                            <input type="checkbox" />
                          </label>
                          <label class="tag-gray" name="skill"
                            >CSS
                            <input type="checkbox" />
                          </label>
                          <label class="tag-gray" name="skill"
                            >JavaScript
                            <input type="checkbox" />
                          </label>
                          <label class="tag-gray" name="skill"
                            >jQuery
                            <input type="checkbox" />
                          </label>
                          <label class="tag-gray" name="skill"
                            >Vue.js
                            <input type="checkbox" />
                          </label>
                          <label class="tag-gray" name="skill"
                            >React
                            <input type="checkbox" />
                          </label>
                          <label class="tag-gray" name="skill"
                            >Node.js
                            <input type="checkbox" />
                          </label>
                        </div>
                      </div>
                      <div class="contest-create-form-thumbnail">
                        <div class="contest-create-form-inner-section-title">
                          <span>썸네일</span><span>*</span>
                        </div>
                        <div>
                          <div>
                            500MB 이하의 jpg, gif 파일만 등록할 수 있습니다.
                          </div>
                          <div>
                            <label class="btn-primary">
                              파일 선택
                              <input type="file" />
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
                            <div></div>
                          </div>
                          <div class="price-box">
                            <div class="price-box-inner-box">
                              <div class="sm-hidden">
                                <span>🏅 우승</span>
                              </div>
                              <div>
                                <div class="peple-count">
                                  <input type="number" />
                                  <div>
                                    <div id="up-count-btn">
                                      <i class="ic-chevron"></i>
                                    </div>
                                    <div id="down-count-btn">
                                      <i class="ic-chevron"></i>
                                    </div>
                                  </div>
                                </div>
                                <span>명에게</span>
                              </div>
                              <div>
                                <div class="reward-price">
                                  <input type="number" />
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
                              <span id="result-price">500</span>
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
                          <div class="general">
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
                          </div>
                          <div class="advanced">
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
                          </div>
                          <div class="premium">
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
                          </div>
                        </div>
                      </div>
                      <div class="contest-create-form-btn lg-hidden">
                        <button class="btn-primary" type="submit">다음</button>
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
                          src="${contextPath}/resources/assets/images/contest-thumbnail.svg"
                          alt=""
                        />
                      </div>
                      <div class="contest-create-summary-sticky-box-date">
                        <span>기간</span>
                        <span>2023.05.27 ~ 2023.07.10</span>
                      </div>
                      <div class="contest-create-summary-sticky-box-price">
                        <div
                          class="contest-create-summary-sticky-box-price-detail"
                        >
                          <div>
                            <span>공모전 상금</span>
                            <span>300,000</span>
                          </div>
                          <div>
                            <span>프리미엄</span>
                            <span>500,000</span>
                          </div>
                        </div>
                        <div
                          class="contest-create-summary-sticky-box-price-total"
                        >
                          <span>총 금액</span>
                          <span>800,000원</span>
                        </div>
                        <div
                          class="contest-create-summary-sticky-box-price-btn"
                        >
                          <button class="btn-primary btn-40" type="submit">
                            다음
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

    <!-- footer include -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
  </body>
</html>
