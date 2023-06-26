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
      href="${contextPath}/resources/styles/css/find-developer.css"
    />
    <title>Coward | 개발자 찾기</title>
  </head>
  <body>
      <!-- 헤더와 공통 네비 -->
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
    <jsp:include page="/WEB-INF/views/common/nav.jsp" />
    
    <div class="banner-top">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <div class="banner-top-wrapper">
              <div class="banner-info">
                <h3 class="main-title">어떤 전문가를 찾으세요?</h3>
                <p class="sub-title">검증된 개발자를 한눈에 찾아보세요!</p>
                <p class="sub-title">분야별 개발자를 골라볼수 있습니다🔥</p>
              </div>
              <div class="banner-image">
                <img
                  src="${contextPath}/resources/assets/images/banner-rocket.svg"
                  aria-hidden
                />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <main class="find-developer">
      <div class="container">
        <div class="row">
          <div class="stack-box">
            <div class="stack-btn">
              <input id="all" type="radio" name="userStack" value="all" />
              <label for="all" checked>ALL</label>
            </div>

            <div class="stack-btn">
              <input id="front" type="radio" name="userStack" value="front" />
              <label for="front">FE</label>
            </div>

            <div class="stack-btn">
              <input id="back" type="radio" name="userStack" value="back" />
              <label for="back">BE</label>
            </div>

            <div class="stack-btn">
              <input id="full" type="radio" name="userStack" value="full" />
              <label for="full">FULL</label>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-4 col-md-6 col-lg-4">
            <div class="developer-card">
              <div class="developer-profile">
                <div class="developer-img">
                  <div class="profile-img avatar">
                    <img
                      src="${contextPath}/resources/assets/images/default-user-img.png"
                    />
                  </div>
                </div>
                <div class="developer-info">
                  <div class="developer-title">
                    <p class="developer-nick">빡과장</p>
                    <div class="developer-type">Back</div>
                  </div>
                  <p class="developer-oneline">BackEnd개발자 빡과장 입니다</p>
                </div>
              </div>
              <div class="developer-record">
                <div>
                  <span>총 수익</span>
                  <p>600만원</p>
                </div>
                <div>
                  <span>우승</span>
                  <p>12회</p>
                </div>

                <div>
                  <span>총 참가</span>
                  <p>12건</p>
                </div>
              </div>
            </div>
          </div>

          <div class="col-sm-4 col-md-6 col-lg-4">
            <div class="developer-card">
              <div class="developer-profile">
                <div class="developer-img">
                  <div class="profile-img avatar">
                    <img
                      src="${contextPath}/resources/assets/images/default-user-img.png"
                    />
                  </div>
                </div>
                <div class="developer-info">
                  <div class="developer-title">
                    <p class="developer-nick">빡과장</p>
                    <div class="developer-type">Back</div>
                  </div>
                  <p class="developer-oneline">BackEnd개발자 빡과장 입니다</p>
                </div>
              </div>
              <div class="developer-record">
                <div>
                  <span>총 수익</span>
                  <p>600만원</p>
                </div>
                <div>
                  <span>우승</span>
                  <p>12회</p>
                </div>

                <div>
                  <span>총 참가</span>
                  <p>12건</p>
                </div>
              </div>
              <!-- 호버 시 
                <div class="developer-chat-btn">
                
                <button class="profile-btn btn-primary btn-32">
                  프로필 보기
                </button>
                <button class="btn-primary btn-32">채팅 하기</button>
              </div>-->
            </div>
          </div>

          <div class="col-sm-4 col-md-6 col-lg-4">
            <div class="developer-card">
              <div class="developer-profile">
                <div class="developer-img">
                  <div class="profile-img avatar">
                    <img
                      src="${contextPath}/resources/assets/images/default-user-img.png"
                    />
                  </div>
                </div>
                <div class="developer-info">
                  <div class="developer-title">
                    <p class="developer-nick">빡과장</p>
                    <div class="developer-type">Back</div>
                  </div>
                  <p class="developer-oneline">BackEnd개발자 빡과장 입니다</p>
                </div>
              </div>
              <div class="developer-record">
                <div>
                  <span>총 수익</span>
                  <p>600만원</p>
                </div>
                <div>
                  <span>우승</span>
                  <p>12회</p>
                </div>

                <div>
                  <span>총 참가</span>
                  <p>12건</p>
                </div>
              </div>
            </div>
          </div>

          <div class="col-sm-4 col-md-6 col-lg-4">
            <div class="developer-card">
              <div class="developer-profile">
                <div class="developer-img">
                  <div class="profile-img avatar">
                    <img
                      src="${contextPath}/resources/assets/images/default-user-img.png"
                    />
                  </div>
                </div>
                <div class="developer-info">
                  <div class="developer-title">
                    <p class="developer-nick">빡과장</p>
                    <div class="developer-type">Back</div>
                  </div>
                  <p class="developer-oneline">BackEnd개발자 빡과장 입니다</p>
                </div>
              </div>
              <div class="developer-record">
                <div>
                  <span>총 수익</span>
                  <p>600만원</p>
                </div>
                <div>
                  <span>우승</span>
                  <p>12회</p>
                </div>

                <div>
                  <span>총 참가</span>
                  <p>12건</p>
                </div>
              </div>
            </div>
          </div>

          <div class="col-sm-4 col-md-6 col-lg-4">
            <div class="developer-card">
              <div class="developer-profile">
                <div class="developer-img">
                  <div class="profile-img avatar">
                    <img
                      src="${contextPath}/resources/assets/images/default-user-img.png"
                    />
                  </div>
                </div>
                <div class="developer-info">
                  <div class="developer-title">
                    <p class="developer-nick">빡과장</p>
                    <div class="developer-type">Back</div>
                  </div>
                  <p class="developer-oneline">BackEnd개발자 빡과장 입니다</p>
                </div>
              </div>
              <div class="developer-record">
                <div>
                  <span>총 수익</span>
                  <p>600만원</p>
                </div>
                <div>
                  <span>우승</span>
                  <p>12회</p>
                </div>

                <div>
                  <span>총 참가</span>
                  <p>12건</p>
                </div>
              </div>
            </div>
          </div>

          <div class="col-sm-4 col-md-6 col-lg-4">
            <div class="developer-card">
              <div class="developer-profile">
                <div class="developer-img">
                  <div class="profile-img avatar">
                    <img
                      src="${contextPath}/resources/assets/images/default-user-img.png"
                    />
                  </div>
                </div>
                <div class="developer-info">
                  <div class="developer-title">
                    <p class="developer-nick">빡과장</p>
                    <div class="developer-type">Back</div>
                  </div>
                  <p class="developer-oneline">BackEnd개발자 빡과장 입니다</p>
                </div>
              </div>
              <div class="developer-record">
                <div>
                  <span>총 수익</span>
                  <p>600만원</p>
                </div>
                <div>
                  <span>우승</span>
                  <p>12회</p>
                </div>

                <div>
                  <span>총 참가</span>
                  <p>12건</p>
                </div>
              </div>
            </div>
          </div>

          <div class="col-sm-4 col-md-6 col-lg-4">
            <div class="developer-card">
              <div class="developer-profile">
                <div class="developer-img">
                  <div class="profile-img avatar">
                    <img
                      src="${contextPath}/resources/assets/images/default-user-img.png"
                    />
                  </div>
                </div>
                <div class="developer-info">
                  <div class="developer-title">
                    <p class="developer-nick">빡과장</p>
                    <div class="developer-type">Back</div>
                  </div>
                  <p class="developer-oneline">BackEnd개발자 빡과장 입니다</p>
                </div>
              </div>
              <div class="developer-record">
                <div>
                  <span>총 수익</span>
                  <p>600만원</p>
                </div>
                <div>
                  <span>우승</span>
                  <p>12회</p>
                </div>

                <div>
                  <span>총 참가</span>
                  <p>12건</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
    <!-- 푸터 -->
  <jsp:include page="/WEB-INF/views/common/footer.jsp" />
    <script src="../js/mypage-slider.js"></script>
  </body>
</html>
