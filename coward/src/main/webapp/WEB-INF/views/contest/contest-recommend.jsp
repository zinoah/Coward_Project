<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Coward | 맞춤 공모전</title>

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
            <div class="recommend-step-1" id="recommend-step-1">
              <div class="recommend-tab">
                <img src="${contextPath}/resources/assets/images/step1.svg" />
              </div>
              <div class="recommend-title">
                <p>찾으시는 개발 공모전 분야가 다음 중 무엇인가요?</p>
              </div>

              <div class="recommend-card-wrapper">
                <div class="recommend-card">
                  <div class="recommend-card-img">
                    <img src="${contextPath}/resources/assets/images/user-interface.svg" />
                  </div>

                  <p>모바일</p>
                </div>
                <div class="recommend-card">
                  <div class="recommend-card-img">
                    <img src="${contextPath}/resources/assets/images/layout.svg" />
                  </div>

                  <p>웹</p>
                </div>
                <div class="recommend-card">
                  <div class="recommend-card-img">
                    <img src="${contextPath}/resources/assets/images/game.svg" />
                  </div>

                  <p>게임</p>
                </div>
                <div class="recommend-card">
                  <div class="recommend-card-img">
                    <img src="${contextPath}/resources/assets/images/shield.svg" />
                  </div>
                  <p>보안</p>
                </div>
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
                  <div class="recommend-skill">
                    <div class="recommend-skill-img">
                      <img src="${contextPath}/resources/assets/images/javaScript.svg" />
                    </div>
                    <h5>JavaScript</h5>
                  </div>
                  <div class="recommend-skill">
                    <div class="recommend-skill-img">
                      <img src="${contextPath}/resources/assets/images/javaScript.svg" />
                    </div>
                    <h5>JavaScript</h5>
                  </div>
                  <div class="recommend-skill">
                    <img src="${contextPath}/resources/assets/images/java.svg" />
                    <h5>Java</h5>
                  </div>
                  <div class="recommend-skill">
                    <img src="${contextPath}/resources/assets/images/java.svg" />
                    <h5>Java</h5>
                  </div>
                  <div class="recommend-skill">
                    <img src="${contextPath}/resources/assets/images/javaScript.svg" />
                    <h5>JavaScript</h5>
                  </div>
                  <div class="recommend-skill">
                    <img src="${contextPath}/resources/assets/images/javaScript.svg" />
                    <h5>JavaScript</h5>
                  </div>
                  <div class="recommend-skill">
                    <div class="recommend-skill-img">
                      <img src="${contextPath}/resources/assets/images/javaScript.svg" />
                    </div>
                    <h5>JavaScript</h5>
                  </div>
                  <div class="recommend-skill">
                    <div class="recommend-skill-img">
                      <img src="${contextPath}/resources/assets/images/javaScript.svg" />
                    </div>
                    <h5>JavaScript</h5>
                  </div>
                  <div class="recommend-skill">
                    <img src="${contextPath}/resources/assets/images/java.svg" />
                    <h5>Java</h5>
                  </div>
                  <div class="recommend-skill">
                    <div class="recommend-skill-img">
                      <img src="${contextPath}/resources/assets/images/javaScript.svg" />
                    </div>
                    <h5>JavaScript</h5>
                  </div>
                  <div class="recommend-skill">
                    <div class="recommend-skill-img">
                      <img src="${contextPath}/resources/assets/images/javaScript.svg" />
                    </div>
                    <h5>JavaScript</h5>
                  </div>
                  <div class="recommend-skill">
                    <img src="${contextPath}/resources/assets/images/java.svg" />
                    <h5>Java</h5>
                  </div>
                  <div class="recommend-skill">
                    <div class="recommend-skill-img">
                      <img src="${contextPath}/resources/assets/images/javaScript.svg" />
                    </div>
                    <h5>JavaScript</h5>
                  </div>
                  <div class="recommend-skill">
                    <img src="${contextPath}/resources/assets/images/java.svg" />
                    <h5>Java</h5>
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
                <p>상금: <span id="value"></span>300만원 이상</p>

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
                  id="recommend-reward-slide"
                  min="1"
                  max="1000"
                  value="10"
                />
              </div>
            </div>

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
              <button class="btn-primary btn-40" id="next3" onclick="next3()">
                다음
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>

 <jsp:include page="/WEB-INF/views/common/footer.jsp" />

    <script src="${contextPath}/resources/js/contest-recommend.js"></script>
  </body>
</html>
