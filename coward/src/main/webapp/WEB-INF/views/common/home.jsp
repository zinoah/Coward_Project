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
      href="${contextPath}/resources/styles/css/home.css"
    />
    <title>Coward | Home</title>
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
                  Coward를 사랑해주시는 <br class="sm-only" />
                  여러분들을 위한 이벤트!
                </h3>
                <p class="sub-title sm-hidden">
                  쿠폰, 참여 혜택 등 각종 기회를 놓치지 마세요!
                </p>
                <a href="#" class="banner-button btn-32 btn-primary"
                  >더 알아보기</a
                >
              </div>
              <div class="banner-image">
                <img
                  src="${contextPath}/resources/assets/images/suprise-box.svg"
                  aria-hidden
                />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <main class="home">
      <div class="container">
        <!-- Note: 공모전 둘러보기 -->
        <section class="home-contest-preview">
          <div class="row">
            <div class="col-sm-4">
              <div class="section-title">
                <h3>공모전 둘러보기</h3>
                <a class="more-btn" href="#">
                  <span>더보기</span>
                  <i class="ic-chevron" aria-hidden></i>
                </a>
              </div>

              <div class="slider-wrapper">
                <div class="contest-slider">
                  <div>
                    <div class="contest-slider-card">
                      <div class="contest-slider-card-img">
                        <img
                          src="${contextPath}/resources/assets/images/contest-gallery-card-img.svg"
                          alt=""
                        />
                      </div>
                      <div class="contest-slider-card-info">
                        <div class="contest-slider-card-info-title">
                          <p>1식품 쇼핑몰 웹사이트 제작</p>
                        </div>
                        <div class="contest-slider-card-info-detail">
                          <p>상금</p>
                          <p>100만원</p>
                        </div>
                        <div class="contest-slider-card-info-detail">
                          <p>남은기간</p>
                          <p>1일</p>
                        </div>
                        <div class="contest-slider-card-info-button">
                          <button class="btn-outlined btn-32">
                            참여하러가기
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div>
                    <div class="contest-slider-card">
                      <div class="contest-slider-card-img">
                        <img
                          src="${contextPath}/resources/assets/images/contest-gallery-card-img.svg"
                          alt=""
                        />
                      </div>
                      <div class="contest-slider-card-info">
                        <div class="contest-slider-card-info-title">
                          <p>2식품 쇼핑몰 웹사이트 제작</p>
                        </div>
                        <div class="contest-slider-card-info-detail">
                          <p>상금</p>
                          <p>100만원</p>
                        </div>
                        <div class="contest-slider-card-info-detail">
                          <p>남은기간</p>
                          <p>1일</p>
                        </div>
                        <div class="contest-slider-card-info-button">
                          <button class="btn-outlined btn-32">
                            참여하러가기
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div>
                    <div class="contest-slider-card">
                      <div class="contest-slider-card-img">
                        <img
                          src="${contextPath}/resources/assets/images/contest-gallery-card-img.svg"
                          alt=""
                        />
                      </div>
                      <div class="contest-slider-card-info">
                        <div class="contest-slider-card-info-title">
                          <p>3식품 쇼핑몰 웹사이트 제작</p>
                        </div>
                        <div class="contest-slider-card-info-detail">
                          <p>상금</p>
                          <p>100만원</p>
                        </div>
                        <div class="contest-slider-card-info-detail">
                          <p>남은기간</p>
                          <p>1일</p>
                        </div>
                        <div class="contest-slider-card-info-button">
                          <button class="btn-outlined btn-32">
                            참여하러가기
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div>
                    <div class="contest-slider-card">
                      <div class="contest-slider-card-img">
                        <img
                          src="${contextPath}/resources/assets/images/contest-gallery-card-img.svg"
                          alt=""
                        />
                      </div>
                      <div class="contest-slider-card-info">
                        <div class="contest-slider-card-info-title">
                          <p>4식품 쇼핑몰 웹사이트 제작</p>
                        </div>
                        <div class="contest-slider-card-info-detail">
                          <p>상금</p>
                          <p>100만원</p>
                        </div>
                        <div class="contest-slider-card-info-detail">
                          <p>남은기간</p>
                          <p>1일</p>
                        </div>
                        <div class="contest-slider-card-info-button">
                          <button class="btn-outlined btn-32">
                            참여하러가기
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div>
                    <div class="contest-slider-card">
                      <div class="contest-slider-card-img">
                        <img
                          src="${contextPath}/resources/assets/images/contest-gallery-card-img.svg"
                          alt=""
                        />
                      </div>
                      <div class="contest-slider-card-info">
                        <div class="contest-slider-card-info-title">
                          <p>5식품 쇼핑몰 웹사이트 제작</p>
                        </div>
                        <div class="contest-slider-card-info-detail">
                          <p>상금</p>
                          <p>100만원</p>
                        </div>
                        <div class="contest-slider-card-info-detail">
                          <p>남은기간</p>
                          <p>1일</p>
                        </div>
                        <div class="contest-slider-card-info-button">
                          <button class="btn-outlined btn-32">
                            참여하러가기
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div>
                    <div class="contest-slider-card">
                      <div class="contest-slider-card-img">
                        <img
                          src="${contextPath}/resources/assets/images/contest-gallery-card-img.svg"
                          alt=""
                        />
                      </div>
                      <div class="contest-slider-card-info">
                        <div class="contest-slider-card-info-title">
                          <p>6식품 쇼핑몰 웹사이트 제작</p>
                        </div>
                        <div class="contest-slider-card-info-detail">
                          <p>상금</p>
                          <p>100만원</p>
                        </div>
                        <div class="contest-slider-card-info-detail">
                          <p>남은기간</p>
                          <p>1일</p>
                        </div>
                        <div class="contest-slider-card-info-button">
                          <button class="btn-outlined btn-32">
                            참여하러가기
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div>
                    <div class="contest-slider-card">
                      <div class="contest-slider-card-img">
                        <img
                          src="${contextPath}/resources/assets/images/contest-gallery-card-img.svg"
                          alt=""
                        />
                      </div>
                      <div class="contest-slider-card-info">
                        <div class="contest-slider-card-info-title">
                          <p>7식품 쇼핑몰 웹사이트 제작</p>
                        </div>
                        <div class="contest-slider-card-info-detail">
                          <p>상금</p>
                          <p>100만원</p>
                        </div>
                        <div class="contest-slider-card-info-detail">
                          <p>남은기간</p>
                          <p>1일</p>
                        </div>
                        <div class="contest-slider-card-info-button">
                          <button class="btn-outlined btn-32">
                            참여하러가기
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div>
                    <div class="contest-slider-card">
                      <div class="contest-slider-card-img">
                        <img
                          src="${contextPath}/resources/assets/images/contest-gallery-card-img.svg"
                          alt=""
                        />
                      </div>
                      <div class="contest-slider-card-info">
                        <div class="contest-slider-card-info-title">
                          <p>8식품 쇼핑몰 웹사이트 제작</p>
                        </div>
                        <div class="contest-slider-card-info-detail">
                          <p>상금</p>
                          <p>100만원</p>
                        </div>
                        <div class="contest-slider-card-info-detail">
                          <p>남은기간</p>
                          <p>1일</p>
                        </div>
                        <div class="contest-slider-card-info-button">
                          <button class="btn-outlined btn-32">
                            참여하러가기
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div>
                    <div class="contest-slider-card">
                      <div class="contest-slider-card-img">
                        <img
                          src="${contextPath}/resources/assets/images/contest-gallery-card-img.svg"
                          alt=""
                        />
                      </div>
                      <div class="contest-slider-card-info">
                        <div class="contest-slider-card-info-title">
                          <p>9식품 쇼핑몰 웹사이트 제작</p>
                        </div>
                        <div class="contest-slider-card-info-detail">
                          <p>상금</p>
                          <p>100만원</p>
                        </div>
                        <div class="contest-slider-card-info-detail">
                          <p>남은기간</p>
                          <p>1일</p>
                        </div>
                        <div class="contest-slider-card-info-button">
                          <button class="btn-outlined btn-32">
                            참여하러가기
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div>
                    <div class="contest-slider-card">
                      <div class="contest-slider-card-img">
                        <img
                          src="${contextPath}/resources/assets/images/contest-gallery-card-img.svg"
                          alt=""
                        />
                      </div>
                      <div class="contest-slider-card-info">
                        <div class="contest-slider-card-info-title">
                          <p>10식품 쇼핑몰 웹사이트 제작</p>
                        </div>
                        <div class="contest-slider-card-info-detail">
                          <p>상금</p>
                          <p>100만원</p>
                        </div>
                        <div class="contest-slider-card-info-detail">
                          <p>남은기간</p>
                          <p>1일</p>
                        </div>
                        <div class="contest-slider-card-info-button">
                          <button class="btn-outlined btn-32">
                            참여하러가기
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="slider-controls">
                  <!-- slider control 버튼 -->
                  <button class="control-button is-prev" type="button">
                    <i class="ic-chevron"></i>
                  </button>
                  <button class="control-button is-next" type="button">
                    <i class="ic-chevron"></i>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </section>

        <!-- Note: 이런 서비스는 어떠세요? -->
        <section class="home-services">
          <div class="row">
            <div class="col-sm-4">
              <div class="section-title">
                <h3>이런 서비스는 어떠세요?</h3>
              </div>
            </div>

            <!-- Note: 서비스 바로가기 버튼 링크들 -->
            <a class="col-sm-1 col-md-3 col-lg-3 service" href="#">
              <div class="service-image">
                <!-- Note: 모바일 아이콘 -->
                <img
                  class="sm-only"
                  src="${contextPath}/resources/assets/images/thumbs-up-2d.svg"
                  alt="맞춤 공모전 바로가기"
                />
                <!-- Note: 태블릿, 데스크탑 아이콘 -->
                <img
                  class="sm-hidden"
                  src="${contextPath}/resources/assets/images/thumbs-up.svg"
                  alt="맞춤 공모전 바로가기"
                />
              </div>
              <span class="service-name">맞춤 공모전</span>
            </a>
            <a class="col-sm-1 col-md-3 col-lg-3 service" href="#">
              <div class="service-image">
                <!-- Note: 모바일 아이콘 -->
                <img
                  class="sm-only"
                  src="${contextPath}/resources/assets/images/rocket-2d.svg"
                  alt="개발자 찾기 바로가기"
                />
                <!-- Note: 태블릿, 데스크탑 아이콘 -->
                <img
                  class="sm-hidden"
                  src="${contextPath}/resources/assets/images/rocket.svg"
                  alt="개발자 찾기 바로가기"
                />
              </div>
              <span class="service-name">개발자 찾기</span>
            </a>
            <a
              class="col-sm-1 col-md-3 col-lg-3 service"
              href="${contextPath}/event/main"
            >
              <div class="service-image">
                <!-- Note: 모바일 아이콘 -->
                <img
                  class="sm-only"
                  src="${contextPath}/resources/assets/images/present-2d.svg"
                  alt="이벤트 바로가기"
                />
                <!-- Note: 태블릿, 데스크탑 아이콘 -->
                <img
                  class="sm-hidden"
                  src="${contextPath}/resources/assets/images/gift-box.svg"
                  alt="이벤트 바로가기"
                />
              </div>
              <span class="service-name">이벤트</span>
            </a>
            <a class="col-sm-1 col-md-3 col-lg-3 service" href="#">
              <div class="service-image">
                <!-- Note: 모바일 아이콘 -->
                <img
                  class="sm-only"
                  src="${contextPath}/resources/assets/images/info-2d.svg"
                  alt="고객센터 바로가기"
                />
                <!-- Note: 태블릿, 데스크탑 아이콘 -->
                <img
                  class="sm-hidden"
                  src="${contextPath}/resources/assets/images/word-bubble.svg"
                  alt="고객센터 바로가기"
                />
              </div>
              <span class="service-name">고객센터</span>
            </a>
          </div>
        </section>

        <!-- Note: 랭킹 보기 -->
        <section class="home-rankings">
          <div class="row">
            <div class="col-sm-4">
              <div class="section-title">
                <h3>랭킹 보기</h3>
                <a class="more-btn" href="${contextPath}/ranking">
                  <span>더보기</span>
                  <i class="ic-chevron" aria-hidden></i>
                </a>
              </div>
            </div>

            <!-- Note: 이달의 상금왕 -->
            <div class="col-sm-4 col-md-4 col-lg-4 home-ranking">
              <h5 class="ranking-title">이달의 상금왕 💎</h5>

              <div class="ranking-image sm-hidden">
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
              </ul>
            </div>
            <!-- Note: 이달의 우승왕 -->
            <div class="col-sm-4 col-md-4 col-lg-4 home-ranking">
              <h5 class="ranking-title">이달의 우승왕 🏆</h5>

              <div class="ranking-image sm-hidden">
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
              </ul>
            </div>
            <!-- Note: 이달의 인기왕 -->
            <div class="col-sm-4 col-md-4 col-lg-4 home-ranking">
              <h5 class="ranking-title">이달의 인기왕 💗</h5>

              <div class="ranking-image sm-hidden">
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
              </ul>
            </div>
          </div>
        </section>

        <!-- Note: 새로 등록된 공모전 -->
        <section class="home-contest-new">
          <div class="row">
            <div class="col-sm-4">
              <div class="section-title">
                <div class="section-title-new">
                  <h3>새로 등록된 공모전</h3>
                  <div class="tag-yellow">New</div>
                </div>
                <a class="more-btn" href="#">
                  <span>더보기</span>
                  <i class="ic-chevron" aria-hidden></i>
                </a>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-lg-7 lg-only">
              <div class="new-contest-list">
                <a class="new-contest-item" href="#">
                  <div class="contest-thumbnail">
                    <img
                      src="${contextPath}/resources/assets/images/contest-gallery-card-img.svg"
                    />
                  </div>

                  <div class="contest-info">
                    <span class="user-nick">Pizza Planet</span>
                    <h3 class="contest-title">피자 데이터베이스 구현</h3>
                    <div class="contest-price">
                      <span>총 상금 <span class="price">300</span>만원</span>
                    </div>
                  </div>
                </a>
                <a class="new-contest-item" href="#">
                  <div class="contest-thumbnail">
                    <img
                      src="${contextPath}/resources/assets/images/contest-gallery-card-img.svg"
                    />
                  </div>

                  <div class="contest-info">
                    <span class="user-nick">Pizza Planet</span>
                    <h3 class="contest-title">피자 데이터베이스 구현</h3>
                    <div class="contest-price">
                      <span>총 상금 <span class="price">300</span>만원</span>
                    </div>
                  </div>
                </a>
                <!-- Note: 카드형 공모전 보기 중 광고인 경우 -->
                <a class="new-contest-item is-ad" href="#">
                  <div class="contest-thumbnail">
                    <img
                      src="${contextPath}/resources/assets/images/contest-gallery-card-img.svg"
                    />
                  </div>

                  <div class="contest-info">
                    <div class="contest-header">
                      <span class="user-nick">토스</span>
                      <div class="ad-tag">AD</div>
                    </div>

                    <h3 class="contest-title">
                      흩어진 자산<br />
                      한번에 모아 관리하기 !
                    </h3>
                  </div>
                </a>
                <a class="new-contest-item" href="#">
                  <div class="contest-thumbnail">
                    <img
                      src="${contextPath}/resources/assets/images/contest-gallery-card-img.svg"
                    />
                  </div>

                  <div class="contest-info">
                    <span class="user-nick">Pizza Planet</span>
                    <h3 class="contest-title">피자 데이터베이스 구현</h3>
                    <div class="contest-price">
                      <span>총 상금 <span class="price">300</span>만원</span>
                    </div>
                  </div>
                </a>
                <a class="new-contest-item" href="#">
                  <div class="contest-thumbnail">
                    <img
                      src="${contextPath}/resources/assets/images/contest-gallery-card-img.svg"
                    />
                  </div>

                  <div class="contest-info">
                    <span class="user-nick">Pizza Planet</span>
                    <h3 class="contest-title">피자 데이터베이스 구현</h3>
                    <div class="contest-price">
                      <span>총 상금 <span class="price">300</span>만원</span>
                    </div>
                  </div>
                </a>
                <a class="new-contest-item" href="#">
                  <div class="contest-thumbnail">
                    <img
                      src="${contextPath}/resources/assets/images/contest-gallery-card-img.svg"
                    />
                  </div>

                  <div class="contest-info">
                    <span class="user-nick">Pizza Planet</span>
                    <h3 class="contest-title">피자 데이터베이스 구현</h3>
                    <div class="contest-price">
                      <span>총 상금 <span class="price">300</span>만원</span>
                    </div>
                  </div>
                </a>
              </div>
            </div>

            <div class="col-sm-4 col-lg-5">
              <div class="new-contest-board">
                <a class="new-contest-item" href="#">
                  <div class="contest-thumbnail">
                    <img
                      src="${contextPath}/resources/assets/images/contest-gallery-card-img.svg"
                    />
                  </div>

                  <div class="contest-info">
                    <span class="user-nick">Pizza Planet</span>
                    <h3 class="contest-title">피자 데이터베이스 구현</h3>
                    <div class="contest-price">
                      <span>총 상금 <span class="price">300</span>만원</span>
                    </div>
                  </div>
                </a>
                <a class="new-contest-item" href="#">
                  <div class="contest-thumbnail">
                    <img
                      src="${contextPath}/resources/assets/images/contest-gallery-card-img.svg"
                    />
                  </div>

                  <div class="contest-info">
                    <span class="user-nick">Pizza Planet</span>
                    <h3 class="contest-title">피자 데이터베이스 구현</h3>
                    <div class="contest-price">
                      <span>총 상금 <span class="price">300</span>만원</span>
                    </div>
                  </div>
                </a>
                <a class="new-contest-item" href="#">
                  <div class="contest-thumbnail">
                    <img
                      src="${contextPath}/resources/assets/images/contest-gallery-card-img.svg"
                    />
                  </div>

                  <div class="contest-info">
                    <span class="user-nick">Pizza Planet</span>
                    <h3 class="contest-title">피자 데이터베이스 구현</h3>
                    <div class="contest-price">
                      <span>총 상금 <span class="price">300</span>만원</span>
                    </div>
                  </div>
                </a>
                <a class="new-contest-item" href="#">
                  <div class="contest-thumbnail">
                    <img
                      src="${contextPath}/resources/assets/images/contest-gallery-card-img.svg"
                    />
                  </div>

                  <div class="contest-info">
                    <span class="user-nick">Pizza Planet</span>
                    <h3 class="contest-title">피자 데이터베이스 구현</h3>
                    <div class="contest-price">
                      <span>총 상금 <span class="price">300</span>만원</span>
                    </div>
                  </div>
                </a>
                <a class="new-contest-item" href="#">
                  <div class="contest-thumbnail">
                    <img
                      src="${contextPath}/resources/assets/images/contest-gallery-card-img.svg"
                    />
                  </div>

                  <div class="contest-info">
                    <span class="user-nick">Pizza Planet</span>
                    <h3 class="contest-title">피자 데이터베이스 구현</h3>
                    <div class="contest-price">
                      <span>총 상금 <span class="price">300</span>만원</span>
                    </div>
                  </div>
                </a>
              </div>
            </div>
          </div>
        </section>
      </div>

      <!-- Note: Coward 소개 디자인 요소 -->
      <section class="home-features">
        <div class="section-title">
          <h3>Coward는 여러분들의 목표를 응원합니다!</h3>
        </div>

        <div class="track-wrapper">
          <div>
            <div class="track first">
              <div class="feature-box is-blue">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/react-icon.svg"
                  />
                </div>
                <span class="feature-name">React</span>
              </div>
              <div class="feature-box is-yellow">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/spring-icon.svg"
                  />
                </div>
                <span class="feature-name">Spring</span>
              </div>
              <div class="feature-box">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/letter-flower.svg"
                  />
                </div>
              </div>
              <div class="feature-box is-blue">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/web-icon.svg"
                  />
                </div>
                <span class="feature-name">웹</span>
              </div>
              <div class="feature-box">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/rocket.svg"
                  />
                </div>
              </div>
              <div class="feature-box">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/bell-tooltip.svg"
                  />
                </div>
              </div>
              <div class="feature-box is-blue">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/backend-icon.svg"
                  />
                </div>
                <span class="feature-name">백엔드</span>
              </div>
              <div class="feature-box">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/figma-3d.svg"
                  />
                </div>
              </div>
              <div class="feature-box is-yellow">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/cloud-icon.svg"
                  />
                </div>
                <span class="feature-name">클라우드</span>
              </div>
            </div>
            <div class="track second">
              <div class="feature-box is-blue">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/react-icon.svg"
                  />
                </div>
                <span class="feature-name">React</span>
              </div>
              <div class="feature-box is-yellow">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/spring-icon.svg"
                  />
                </div>
                <span class="feature-name">Spring</span>
              </div>
              <div class="feature-box">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/letter-flower.svg"
                  />
                </div>
              </div>
              <div class="feature-box is-blue">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/web-icon.svg"
                  />
                </div>
                <span class="feature-name">웹</span>
              </div>
              <div class="feature-box">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/rocket.svg"
                  />
                </div>
              </div>
              <div class="feature-box">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/bell-tooltip.svg"
                  />
                </div>
              </div>
              <div class="feature-box is-blue">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/backend-icon.svg"
                  />
                </div>
                <span class="feature-name">백엔드</span>
              </div>
              <div class="feature-box">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/figma-3d.svg"
                  />
                </div>
              </div>
              <div class="feature-box is-yellow">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/cloud-icon.svg"
                  />
                </div>
                <span class="feature-name">클라우드</span>
              </div>
            </div>
          </div>
          <div class="lg-only">
            <div class="track third">
              <div class="feature-box is-yellow">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/frontend-icon.svg"
                  />
                </div>
                <span class="feature-name">프론트엔드</span>
              </div>
              <div class="feature-box">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/cloud-3d.svg"
                  />
                </div>
              </div>
              <div class="feature-box">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/trophy.svg"
                  />
                </div>
              </div>
              <div class="feature-box is-blue">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/python-icon.svg"
                  />
                </div>
                <span class="feature-name">Python</span>
              </div>
              <div class="feature-box">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/gift-box.svg"
                  />
                </div>
              </div>
              <div class="feature-box is-yellow">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/application-icon.svg"
                  />
                </div>
                <span class="feature-name">애플리케이션</span>
              </div>
              <div class="feature-box">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/heart-message-3d.svg"
                  />
                </div>
              </div>
              <div class="feature-box">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets//images/track-images/camera.svg"
                  />
                </div>
              </div>
              <div class="feature-box is-blue">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/angular-icon.svg"
                  />
                </div>
                <span class="feature-name">Angular</span>
              </div>
            </div>
            <div class="track forth">
              <div class="feature-box is-yellow">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/frontend-icon.svg"
                  />
                </div>
                <span class="feature-name">프론트엔드</span>
              </div>
              <div class="feature-box">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/cloud-3d.svg"
                  />
                </div>
              </div>
              <div class="feature-box">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/trophy.svg"
                  />
                </div>
              </div>
              <div class="feature-box is-blue">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/python-icon.svg"
                  />
                </div>
                <span class="feature-name">Python</span>
              </div>
              <div class="feature-box">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/gift-box.svg"
                  />
                </div>
              </div>
              <div class="feature-box is-yellow">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/application-icon.svg"
                  />
                </div>
                <span class="feature-name">애플리케이션</span>
              </div>
              <div class="feature-box">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/heart-message-3d.svg"
                  />
                </div>
              </div>
              <div class="feature-box">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets//images/track-images/camera.svg"
                  />
                </div>
              </div>
              <div class="feature-box is-blue">
                <div class="feature-image">
                  <img
                    src="${contextPath}/resources/assets/images/track-images/angular-icon.svg"
                  />
                </div>
                <span class="feature-name">Angular</span>
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>

    <div class="banner-bottom">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <a href="#">
              <div class="banner-bottom-image">
                <img
                  src="${contextPath}/resources/assets/images/coupon.svg"
                  aria-hidden
                />
              </div>
              <p class="ad-slogan">
                Coward 신규 회원가입 하고
                <br /><strong class="text-emphasis">쿠폰팩</strong>
                받으러가기 !
              </p>
            </a>
          </div>
        </div>
      </div>
    </div>

    <jsp:include page="/WEB-INF/views/common/footer.jsp" />

    <aside id="ad-modal" class="ad-modal is-active">
      <a
        class="ad-thumbnail"
        href="${contextPath}resources/pages/event-detail.html"
      >
        <img
          src="${contextPath}/resources/assets/images/dummy/home-ad-thumbnail-2.png"
        />
      </a>
      <div class="buttons">
        <button class="today-skip-button">
          <div class="check-icon sm-only">
            <img
              src="${contextPath}/resources/assets/images/default-check.svg"
            />
          </div>
          <span>오늘하루 보지않기</span>
        </button>
        <button id="ad-close-button" class="close-button">닫기</button>
      </div>
    </aside>

    <!-- 모달 :: is-open -->
    <jsp:include page="/WEB-INF/views/common/menubar.jsp" />

    <div id="overlay" class="overlay is-active"></div>

    <!-- jQuery 라이브러리 추가 -->
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>

    <!-- tiny-slider -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.2/min/tiny-slider.js"></script>
    <script src="${contextPath}/resources/js/header.js"></script>
    <script src="${contextPath}/resources/js/ad-modal.js"></script>
    <script src="${contextPath}/resources/js/slider.js"></script>
  </body>
</html>
