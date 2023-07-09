<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Coward | 맞춤 공모전</title>

    <link
      rel="stylesheet"
      href="${contextPath}/resources/styles/css/slider.css"
    />

    <link
      rel="stylesheet"
      href="${contextPath}/resources/styles/css/contest-recommend.css"
    />
  </head>

  <body>
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
    <jsp:include page="/WEB-INF/views/common/nav.jsp" />

    <div class="banner-top">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <div class="banner-top-wrapper">
              <div class="banner-info">
                <h3 class="main-title">
                  맞춤 공모전 추천 <br class="sm-only" />
                </h3>
                <p class="sub-title sm-hidden">
                  다음 몇가지 질문들을 답변해주시면, 저희가 알맞은 공모전을
                  추천해드릴게요!
                </p>
                <!-- <a href="#" class="banner-button btn-32 btn-primary"
                  >더 알아보기</a
                >-->
              </div>
              <div class="banner-image">
                <img
                  src="${contextPath}/resources/assets/images/dart.svg"
                  aria-hidden
                />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="recommend">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <!-- controller에 넘기기 위한 input hidden -->
            <form action="recommend" method="post" id="recommenForm">
              <div class="recommend-step-1" id="recommend-step-1">
                <div class="recommend-tab">
                  <img src="${contextPath}/resources/assets/images/step1.svg" />
                </div>
                <div class="recommend-title">
                  <p>찾으시는 개발 공모전 분야가 다음 중 무엇인가요?</p>
                </div>

                <div class="recommend-card-wrapper">
                  <label>
                    <input type="radio" name="typeNo" value="1" id="typeNo1" />
                    <div class="recommend-card">
                      <div class="recommend-card-img">
                        <img
                          src="${contextPath}/resources/assets/images/user-interface.svg"
                        />
                      </div>
                      <p>모바일</p>
                    </div>
                  </label>

                  <label>
                    <input type="radio" name="typeNo" value="2" id="typeNo2" />
                    <div class="recommend-card">
                      <div class="recommend-card-img">
                        <img
                          src="${contextPath}/resources/assets/images/layout.svg"
                        />
                      </div>
                      <p>웹</p>
                    </div>
                  </label>

                  <label>
                    <input type="radio" name="typeNo" value="3" id="typeNo3" />
                    <div class="recommend-card">
                      <div class="recommend-card-img">
                        <img
                          src="${contextPath}/resources/assets/images/game.svg"
                        />
                      </div>
                      <p>게임</p>
                    </div>
                  </label>

                  <label>
                    <input
                      type="radio"
                      name="typeNo"
                      value="4"
                      id="typeNo1"
                      4
                    />
                    <div class="recommend-card">
                      <div class="recommend-card-img">
                        <img
                          src="${contextPath}/resources/assets/images/shield.svg"
                        />
                      </div>
                      <p>보안</p>
                    </div>
                  </label>
                </div>
              </div>

              <div class="recommend-step-2" id="recommend-step-2">
                <div class="recommend-tab">
                  <img src="${contextPath}/resources/assets/images/step2.svg" />
                </div>
                <div class="recommend-title">
                  <p>찾으시는 프로그래밍 언어 또는 프레임워크는</p>

                  <p>다음 중 무엇인가요?</p>
                </div>

                <div class="recommend-skill-container">
                  <div class="recommend-skill-wrapper">
                    <div class="tag-box">
                      <label class="tag-gray">
                        <div class="skill-img-box">
                          <img
                            src="${contextPath}/resources/assets/images/Logos/java.svg"
                          />
                        </div>
                        JAVA
                        <input
                          type="checkbox"
                          class="skillCheck"
                          name="skill"
                          value="JAVA"
                        />
                      </label>
                      <label class="tag-gray">
                        <div class="skill-img-box">
                          <img
                            src="${contextPath}/resources/assets/images/Logos/spring.svg"
                          />
                        </div>
                        Spring
                        <input
                          type="checkbox"
                          class="skillCheck"
                          name="skill"
                          value="Spring"
                        />
                      </label>
                      <label class="tag-gray">
                        <div class="skill-img-box">
                          <img
                            src="${contextPath}/resources/assets/images/Logos/SpringBoot.svg"
                          />
                        </div>
                        Spring Boot
                        <input
                          type="checkbox"
                          class="skillCheck"
                          name="skill"
                          value="Spring Boot"
                        />
                      </label>
                      <label class="tag-gray">
                        <div class="skill-img-box">
                          <img
                            src="${contextPath}/resources/assets/images/Logos/php-plain.svg"
                          />
                        </div>
                        PHP
                        <input
                          type="checkbox"
                          class="skillCheck"
                          name="skill"
                          value="PHP"
                        />
                      </label>
                      <label class="tag-gray">
                        <div class="skill-img-box">
                          <img
                            src="${contextPath}/resources/assets/images/Logos/oracle-original.svg"
                          />
                        </div>

                        Oracle
                        <input
                          type="checkbox"
                          class="skillCheck"
                          name="skill"
                          value="Oracle"
                        />
                      </label>
                      <label class="tag-gray">
                        <div class="skill-img-box">
                          <img
                            src="${contextPath}/resources/assets/images/Logos/mysql-original-wordmark.svg"
                          />
                        </div>
                        MySQL
                        <input
                          type="checkbox"
                          class="skillCheck"
                          name="skill"
                          value="MySql"
                        />
                      </label>
                      <label class="tag-gray">
                        <div class="skill-img-box">
                          <img
                            src="${contextPath}/resources/assets/images/Logos/python-original.svg"
                          />
                        </div>
                        Python
                        <input
                          type="checkbox"
                          class="skillCheck"
                          name="skill"
                          value="Python"
                        />
                      </label>
                      <label class="tag-gray">
                        <div class="skill-img-box">
                          <img
                            src="${contextPath}/resources/assets/images/Logos/kotlin-original.svg"
                          />
                        </div>
                        Kotlin
                        <input
                          type="checkbox"
                          class="skillCheck"
                          name="skill"
                          value="Kotlin"
                        />
                      </label>
                      <label class="tag-gray">
                        <div class="skill-img-box">
                          <img
                            src="${contextPath}/resources/assets/images/Logos/swift-original.svg"
                          />
                        </div>

                        Swift
                        <input
                          type="checkbox"
                          class="skillCheck"
                          name="skill"
                          value="Swift "
                        />
                      </label>
                      <label class="tag-gray">
                        <div class="skill-img-box">
                          <img
                            src="${contextPath}/resources/assets/images/Logos/C.svg"
                          />
                        </div>
                        C++
                        <input
                          type="checkbox"
                          class="skillCheck"
                          name="skill"
                          value="C++"
                        />
                      </label>
                      <label class="tag-gray">
                        <div class="skill-img-box">
                          <img
                            src="${contextPath}/resources/assets/images/Logos/csharp-original.svg"
                          />
                        </div>
                        C#
                        <input
                          type="checkbox"
                          class="skillCheck"
                          name="skill"
                          value="C#"
                        />
                      </label>
                      <label class="tag-gray">
                        <div class="skill-img-box">
                          <img
                            src="${contextPath}/resources/assets/images/Logos/html5-plain.svg"
                          />
                        </div>
                        HTML
                        <input
                          type="checkbox"
                          class="skillCheck"
                          name="skill"
                          value="HTML"
                        />
                      </label>
                      <label class="tag-gray">
                        <div class="skill-img-box">
                          <img
                            src="${contextPath}/resources/assets/images/Logos/css3-original.svg"
                          />
                        </div>
                        CSS
                        <input
                          type="checkbox"
                          class="skillCheck"
                          name="skill"
                          value="CSS"
                        />
                      </label>
                      <label class="tag-gray">
                        <div class="skill-img-box">
                          <img
                            src="${contextPath}/resources/assets/images/Logos/javaScript.svg"
                          />
                        </div>
                        JavaScript
                        <input
                          type="checkbox"
                          class="skillCheck"
                          name="skill"
                          value="JavaScript"
                        />
                      </label>
                      <label class="tag-gray">
                        <div class="skill-img-box">
                          <img
                            src="${contextPath}/resources/assets/images/Logos/jquery-original.svg"
                          />
                        </div>
                        jQuery
                        <input
                          type="checkbox"
                          class="skillCheck"
                          name="skill"
                          value="jQuery"
                        />
                      </label>
                      <label class="tag-gray">
                        <div class="skill-img-box">
                          <img
                            src="${contextPath}/resources/assets/images/Logos/vuejs-original.svg"
                          />
                        </div>
                        Vue.js
                        <input
                          type="checkbox"
                          class="skillCheck"
                          name="skill"
                          value="Vue.js"
                        />
                      </label>
                      <label class="tag-gray">
                        <div class="skill-img-box">
                          <img
                            src="${contextPath}/resources/assets/images/Logos/react-original-wordmark.svg"
                          />
                        </div>
                        React
                        <input
                          type="checkbox"
                          class="skillCheck"
                          name="skill"
                          value="React"
                        />
                      </label>
                      <label class="tag-gray">
                        <div class="skill-img-box">
                          <img
                            src="${contextPath}/resources/assets/images/Logos/nodejs-original.svg"
                          />
                        </div>
                        Node.js
                        <input
                          type="checkbox"
                          class="skillCheck"
                          name="skill"
                          value="Node.js"
                        />
                      </label>
                    </div>
                  </div>
                </div>
              </div>

              <div class="recommend-step-3" id="recommend-step-3">
                <div class="recommend-tab">
                  <img src="${contextPath}/resources/assets/images/step3.svg" />
                </div>
                <div class="recommend-title">
                  <p>찾으시는 상금의 금액대는 얼마인가요?</p>
                </div>

                <div class="recommend-reward-wrapper">
                  <p>상금: <span id="priceSpan"></span>만원 이상</p>

                  <!-- 상금 조정 말풍선 추가 예정-->
                  <!--
                <div
                  class="recommend-reward-slide-bubble"
                  id="recommend-reward-slide-bubble"
                >
                  <span>상금을 조정해보세요😊</span>
                </div>
                -->

                  <input
                    type="range"
                    class="recommend-reward-slide"
                    id="price"
                    name="price"
                    min="0"
                    max="1000"
                    step="10"
                    value="500"
                  />
                </div>
              </div>
            </form>

            <div class="btn-wrapper">
              <button class="btn-primary btn-40" id="next1" onclick="next1()">
                다음
              </button>
              <button class="btn-primary btn-40" id="back2" onclick="back2()">
                이전
              </button>
              <button class="btn-primary btn-40" id="next2" onclick="next2()">
                다음
              </button>
              <button class="btn-primary btn-40" id="back3" onclick="back3()">
                이전
              </button>
              <button class="btn-primary btn-40" id="next3">완료</button>
            </div>

            <div class="recommend-step-4" id="recommend-step-4">
              <div class="recommend-title">
                <p>입력한 정보를 바탕으로 불러온 추천 공모전입니다</p>
              </div>

              <div class="row">
                <div class="contest-slider"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <jsp:include page="/WEB-INF/views/common/footer.jsp" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/contest-recommend.js"></script>
    <script>
      const contextPath = "${contextPath}";
    </script>
  </body>
</html>
