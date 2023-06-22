<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- tiny-slider -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.4/tiny-slider.css"
    />
    <link
      rel="stylesheet"
      href="${contextPath}/resources/styles/css/ranking.css"
    />
    <title>Coward | Ranking</title>
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
                  지난 한 달간 큰 성과를 보여주신 분들을 소개합니다!
                </h3>
                <p class="sub-title sm-hidden">
                  이달의 상금 왕, 우승왕, 인기왕을 살펴보세요 !
                </p>
                <a href="#" class="banner-button btn-32 btn-primary"
                  >더 알아보기</a
                >
              </div>
              <div class="banner-image">
                <img
                  src="${contextPath}/resources/assets/images/trophy.svg"
                  aria-hidden
                />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <main class="ranking">
      <!-- Note: 모바일의 경우 -->
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <h3 class="ranking-header">
              <span class="month">5</span>월의 랭킹 보기
            </h3>

            <select class="ranking-dropdown lg-hidden">
              <option class="ranking-dropdown-menu" value="price-king">
                이달의 상금왕 💎
              </option>
              <option class="ranking-dropdown-menu" value="victory-king">
                이달의 우승왕 🏆
              </option>
              <option class="ranking-dropdown-menu" value="popular-king">
                이달의 인기왕 💗
              </option>
            </select>
          </div>
        </div>

        <div class="row">
          <!-- TODO: li 내부 우측 데이터 영역 손봐야 함 -->
          <div class="col-sm-4 col-lg-4">
            <div class="ranking-body is-active">
              <h5 class="ranking-title lg-only">이달의 상금왕 💎</h5>

              <div class="ranking-image">
                <img
                  src="${contextPath}/resources/assets/images/running-doodle.svg"
                  aria-hidden
                />
              </div>
              <ul class="ranking-list">
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">1</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">2</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">3</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">4</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">5</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">6</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">7</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">8</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">9</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">10</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
              </ul>
            </div>
          </div>

          <!-- TODO: li 내부 우측 데이터 영역 손봐야 함 -->
          <div class="col-sm-4 col-lg-4">
            <div class="ranking-body">
              <h5 class="ranking-title lg-only">이달의 우승왕 🏆</h5>

              <div class="ranking-image">
                <img
                  src="${contextPath}/resources/assets/images/icecream-doodle.svg"
                  aria-hidden
                />
              </div>
              <ul class="ranking-list">
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">1</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">2</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">3</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">4</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">5</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">6</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">7</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">8</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">9</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">10</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
              </ul>
            </div>
          </div>

          <!-- TODO: li 내부 우측 데이터 영역 손봐야 함 -->
          <div class="col-sm-4 col-lg-4">
            <div class="ranking-body">
              <h5 class="ranking-title lg-only">이달의 인기왕 💗</h5>

              <div class="ranking-image">
                <img
                  src="${contextPath}/resources/assets/images/loving-doodle.svg"
                  aria-hidden
                />
              </div>
              <ul class="ranking-list">
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">1</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">2</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">3</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">4</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">5</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">6</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">7</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">8</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">9</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
                <li class="ranking-item">
                  <div class="ranking-item-left">
                    <span class="rank">10</span>
                    <div class="user-profile avatar-24">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="1위 프로필"
                      />
                    </div>
                    <span class="user-name">Apple</span>
                  </div>

                  <div class="ranking-item-right">
                    <span class="total-money">100,000,000</span>
                    <span class="currency">원</span>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </main>

    <jsp:include page="/WEB-INF/views/common/footer.jsp" />

    <!-- 모달 :: is-open -->
    <jsp:include page="/WEB-INF/views/common/menubar.jsp" />

    <!-- jQuery 라이브러리 추가 -->
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>
  </body>
</html>
