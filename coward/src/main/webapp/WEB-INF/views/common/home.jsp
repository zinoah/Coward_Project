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

    <div class="banner-slider">
      <div class="banner-carousel">
        <div style="background-color: #2656f6">
          <div class="container">
            <div class="row">
              <div class="col-sm-4">
                <div class="banner-item">
                  <div class="banner-info">
                    <div class="tag-gray lg-only">내일배움코스</div>
                    <h1 class="title">
                      현업에서 사용하는 <br />
                      데이터 분석법 알고 싶어?
                    </h1>
                    <span class="subtitle lg-only"
                      >파이썬 데이터분석 입문 강의는 수강 완료시 무료!</span
                    >
                  </div>
                  <div class="banner-image">
                    <img
                      src="${contextPath}/resources/assets/images/dummy/banner-slider/banner-img-1.svg"
                    />
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div style="background-color: #5f5e5e">
          <div class="container">
            <div class="row">
              <div class="col-sm-4">
                <div class="banner-item">
                  <div class="banner-info">
                    <div class="lg-only"></div>
                    <h1 class="title">
                      어디서든 <br />
                      원하는 인재가 되고 싶다면?
                    </h1>
                    <span class="subtitle lg-only"
                      >Coward를 통해 퀄리티 높은 공모전 우승하고 몸값
                      올려봐!</span
                    >
                  </div>
                  <div class="banner-image">
                    <img
                      src="${contextPath}/resources/assets/images/dummy/banner-slider/banner-img-2.svg"
                    />
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div style="background-color: #1a9a61">
          <div class="container">
            <div class="row">
              <div class="col-sm-4">
                <div class="banner-item">
                  <div class="banner-info">
                    <div class="tag-gray lg-only">특강</div>
                    <h1 class="title">
                      개발자는 <br />
                      단단한 멘탈이 그렇게 중요하다던데?
                    </h1>
                    <span class="subtitle lg-only"
                      >매주 금요일 열리는 개발자 특강 팔로 팔로미!</span
                    >
                  </div>
                  <div class="banner-image">
                    <img
                      src="${contextPath}/resources/assets/images/dummy/banner-slider/banner-img-3.svg"
                    />
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div style="background-color: #7f52ff">
          <div class="container">
            <div class="row">
              <div class="col-sm-4">
                <div class="banner-item">
                  <div class="banner-info">
                    <div class="tag-gray lg-only">특강</div>
                    <h1 class="title">
                      커뮤니케이션이 <br />
                      중요하다는건 이제 모르는 사람 없지?
                    </h1>
                    <span class="subtitle lg-only"
                      >매주 목요일 진행되는 Coward 커뮤니케이션 특강!</span
                    >
                  </div>
                  <div class="banner-image">
                    <img
                      src="${contextPath}/resources/assets/images/dummy/banner-slider/banner-img-4.svg"
                    />
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div style="background-color: #fd9c9c">
          <div class="container">
            <div class="row">
              <div class="col-sm-4">
                <div class="banner-item">
                  <div class="banner-info">
                    <div class="lg-only"></div>
                    <h1 class="title">
                      잘나가는 개발자는 <br />
                      어떤 스택을 쌓고 있을까?
                    </h1>
                    <span class="subtitle lg-only"
                      >인기 개발언어 확인하고 무료 수강까지!</span
                    >
                  </div>
                  <div class="banner-image">
                    <img
                      src="${contextPath}/resources/assets/images/dummy/banner-slider/banner-img-5.svg"
                    />
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="banner-carousel-controlls lg-only">
        <div class="container">
          <div class="row">
            <div class="col-sm-4">
              <button><i class="ic-chevron is-prev"></i></button>
              <button><i class="ic-chevron is-next"></i></button>
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
                <a class="more-btn" href="${contextPath}/contest/main">
                  <span>더보기</span>
                  <i class="ic-chevron" aria-hidden></i>
                </a>
              </div>
              <div class="slider-wrapper">
                <div class="contest-slider">
                  <c:forEach var="contest" items="${contestList}">
                    <div>
                      <div class="contest-slider-card">
                        <div class="contest-slider-card-img">
                          <img src="${contextPath}/${contest.thumbnail}" />
                        </div>
                        <div class="contest-slider-card-info">
                          <div class="contest-slider-card-info-title">
                            <p>${contest.contestTitle}</p>
                          </div>
                          <div class="contest-slider-card-info-detail">
                            <p>상금</p>
                            <p>${contest.price}만원</p>
                          </div>
                          <div class="contest-slider-card-info-detail">
                            <p>남은기간</p>
                            <p>${contest.dueDate}일</p>
                          </div>
                          <div class="contest-slider-card-info-button">
                            <a
                              class="btn-outlined btn-32"
                              href="contest/detail/${contest.contestNo}"
                            >
                              참여하러가기
                            </a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </c:forEach>
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
            <a
              class="col-sm-1 col-md-3 col-lg-3 service"
              href="${contextPath}/contest/recommend"
            >
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
            <a
              class="col-sm-1 col-md-3 col-lg-3 service"
              href="${contextPath}/member/findDev"
            >
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
            <a class="col-sm-1 col-md-3 col-lg-3 service" href="">
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
                <c:forEach var="member" items="${priceKingList}" varStatus="vs">
                  <li class="ranking-item">
                    <div class="ranking-item-left">
                      <span class="rank">${vs.count}</span>
                      <div class="user-profile avatar-24">
                        <img
                          src="${contextPath}/${member.profileImg}"
                          alt="${priceKingList}위 프로필"
                        />
                      </div>
                      <span class="user-name">${member.memberNick}</span>
                    </div>

                    <div class="ranking-item-right">
                      <span class="total-money">${member.totalPrice}</span>
                      <span class="currency">만원</span>
                    </div>
                  </li>
                </c:forEach>
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
                <c:forEach
                  var="member"
                  items="${victoryKingList}"
                  varStatus="vs"
                >
                  <li class="ranking-item">
                    <div class="ranking-item-left">
                      <span class="rank">${vs.count}</span>
                      <div class="user-profile avatar-24">
                        <img
                          src="${contextPath}/${member.profileImg}"
                          alt="${vs.count}위 프로필"
                        />
                      </div>
                      <span class="user-name">${member.memberNick}</span>
                    </div>

                    <div class="ranking-item-right">
                      <span class="total-money">${member.victoryCount}</span>
                      <span class="currency">회</span>
                    </div>
                  </li>
                </c:forEach>
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
                <c:forEach var="member" items="${likeKingList}" varStatus="vs">
                  <li class="ranking-item">
                    <div class="ranking-item-left">
                      <span class="rank">${vs.count}</span>
                      <div class="user-profile avatar-24">
                        <img
                          src="${contextPath}/${member.profileImg}"
                          alt="${vs.count}위 프로필"
                        />
                      </div>
                      <span class="user-name">${member.memberNick}</span>
                    </div>

                    <div class="ranking-item-right">
                      <span class="total-money">${member.likeCount}</span>
                      <span class="currency">좋아요</span>
                    </div>
                  </li>
                </c:forEach>
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
                <a class="more-btn" href="${contextPath}/contest/main">
                  <span>더보기</span>
                  <i class="ic-chevron" aria-hidden></i>
                </a>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-lg-7 lg-only">
              <div class="new-contest-list">
                <c:forEach
                  var="contest"
                  items="${newContestList}"
                  begin="0"
                  end="1"
                  step="1"
                >
                  <a
                    class="new-contest-item"
                    href="contest/detail/${contest.contestNo}"
                  >
                    <div class="contest-thumbnail">
                      <img src="${contextPath}/${contest.thumbnail}" />
                    </div>

                    <div class="contest-info">
                      <span class="user-nick"></span>
                      <h3 class="contest-title">${contest.contestTitle}</h3>
                      <div class="contest-price">
                        <span
                          >총 상금
                          <span class="price">${contest.price}</span>만원</span
                        >
                      </div>
                    </div>
                  </a>
                </c:forEach>

                <!-- Note: 카드형 공모전 보기 중 광고인 경우 -->
                <a class="new-contest-item is-ad" href="#">
                  <div class="contest-thumbnail">
                    <img
                      src="${contextPath}/resources/assets/images/dummy/toss-ad.png"
                    />
                  </div>

                  <div class="contest-info">
                    <div class="contest-header">
                      <span class="user-nick">토스</span>
                      <div class="ad-tag">AD</div>
                    </div>

                    <h3 class="contest-title">
                      토스를 더 잘 쓰는 특별한 <br />방법, 토스 프라임
                    </h3>
                  </div>
                </a>

                <c:forEach
                  var="contest"
                  items="${newContestList}"
                  begin="2"
                  end="4"
                  step="1"
                >
                  <a
                    class="new-contest-item"
                    href="contest/detail/${contest.contestNo}"
                  >
                    <div class="contest-thumbnail">
                      <img src="${contextPath}/${contest.thumbnail}" />
                    </div>

                    <div class="contest-info">
                      <span class="user-nick">${contest.companyNick}</span>
                      <h3 class="contest-title">${contest.contestTitle}</h3>
                      <div class="contest-price">
                        <span
                          >총 상금
                          <span class="price">${contest.price}</span>만원</span
                        >
                      </div>
                    </div>
                  </a>
                </c:forEach>
              </div>
            </div>

            <div class="col-sm-4 col-lg-5">
              <div class="new-contest-board">
                <c:forEach
                  var="contest"
                  items="${newContestList}"
                  begin="5"
                  end="10"
                  step="1"
                >
                  <a
                    class="new-contest-item"
                    href="contest/detail/${contest.contestNo}"
                  >
                    <div class="contest-thumbnail">
                      <img src="${contextPath}/${contest.thumbnail}" />
                    </div>

                    <div class="contest-info">
                      <span class="user-nick"></span>
                      <h3 class="contest-title">${contest.contestTitle}</h3>
                      <div class="contest-price">
                        <span
                          >총 상금
                          <span class="price">${contest.price}</span>만원</span
                        >
                      </div>
                    </div>
                  </a>
                </c:forEach>
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

    <!-- 챗봇 -->
    <script>
      (function () {
        var w = window;
        if (w.ChannelIO) {
          return w.console.error("ChannelIO script included twice.");
        }
        var ch = function () {
          ch.c(arguments);
        };
        ch.q = [];
        ch.c = function (args) {
          ch.q.push(args);
        };
        w.ChannelIO = ch;
        function l() {
          if (w.ChannelIOInitialized) {
            return;
          }
          w.ChannelIOInitialized = true;
          var s = document.createElement("script");
          s.type = "text/javascript";
          s.async = true;
          s.src = "https://cdn.channel.io/plugin/ch-plugin-web.js";
          var x = document.getElementsByTagName("script")[0];
          if (x.parentNode) {
            x.parentNode.insertBefore(s, x);
          }
        }
        if (document.readyState === "complete") {
          l();
        } else {
          w.addEventListener("DOMContentLoaded", l);
          w.addEventListener("load", l);
        }
      })();
    </script>

    <jsp:include page="/WEB-INF/views/common/footer.jsp" />

    <aside id="ad-modal" class="ad-modal">
      <a
        class="ad-thumbnail"
        href="${contextPath}resources/pages/event-detail.html"
      >
        <img
          src="${contextPath}/resources/assets/images/dummy/ad-modal/ad-modal-5.png"
        />
      </a>
      <div class="buttons">
        <button id="ad-today-skip-button" class="today-skip-button">
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

    <div id="overlay" class="overlay"></div>

    <!-- jQuery 라이브러리 추가 -->
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>

    <!-- tiny-slider -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.2/min/tiny-slider.js"></script>
    <script src="${contextPath}/resources/js/header.js"></script>
    <script src="${contextPath}/resources/js/slider.js"></script>
    <script src="${contextPath}/resources/js/home.js"></script>
    <script src="${contextPath}/resources/js/banner-slider.js"></script>
    <script src="${contextPath}/resources/js/chat.js"></script>
  </body>
</html>
