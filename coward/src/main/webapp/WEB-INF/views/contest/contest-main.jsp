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
      href="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.4/tiny-slider.css"
    />
    <link
      rel="stylesheet"
      href="${contextPath}/resources/styles/css/contest-main.css"
    />
    <title>Coward | 콘테스트를 둘러보세요</title>
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

    <main class="main">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <div class="title-wrapper">
              <h1>요즘 인기있는 공모전은?</h1>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-4">
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
                        <p>식품 쇼핑몰 웹사이트 제작</p>
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
                        <p>식품 쇼핑몰 웹사이트 제작</p>
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
                        <p>식품 쇼핑몰 웹사이트 제작</p>
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
                        <p>식품 쇼핑몰 웹사이트 제작</p>
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
                        <p>식품 쇼핑몰 웹사이트 제작</p>
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
                        <p>식품 쇼핑몰 웹사이트 제작</p>
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
                        <p>식품 쇼핑몰 웹사이트 제작</p>
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
                        <p>식품 쇼핑몰 웹사이트 제작</p>
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
                        <p>식품 쇼핑몰 웹사이트 제작</p>
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
                        <p>식품 쇼핑몰 웹사이트 제작</p>
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
                        <p>식품 쇼핑몰 웹사이트 제작</p>
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
        <div class="row">
          <div class="col-sm-4">
            <div class="banner-middle">
              <div class="banner-middle-title">
                <span>Coward 회원이 되어</span>
              </div>
              <div class="banner-middle-title">
                <span>다양한 개발자의 도움을 받아보세요.</span>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-4">
            <div class="title-wrapper">
              <h1>이런 공모전은 어떠세요?</h1>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-4">
            <div class="category-button-wrapper">
              <div class="lg-btn-box sm-hidden md-hidden">
                <button class="btn-secondary lg-category-button">전체</button>
                <button class="btn-secondary lg-category-button">진행중</button>
                <button class="btn-secondary lg-category-button">
                  마감임박
                </button>
                <button class="lg-category-button btn-secondary">마감</button>
              </div>
              <div class="category-button-box-mobile lg-hidden">
                <button>진행중</button>
                <button>마감임박</button>
                <button>마감</button>
                <button>전체</button>
              </div>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-4">
            <div class="type-button-wrapper">
              <div class="select">
                <img src="${contextPath}/resources/assets/images/filter.svg" />

                <p>타입</p>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- 카드시작 -->
          <div class="col-sm-4 col-md-4 col-lg-3">
            <a href="#">
              <div class="contest-card">
                <div class="bookmark"><i class="ic-bookmark-filled"></i></div>
                <div class="contest-card-title">
                  <div><span>금융상품 공모전</span></div>
                  <div class="tag-yellow">new</div>
                </div>
                <div class="contest-card-info">
                  <div class="contest-card-info-detail">
                    <div>
                      <span>남은기간</span>
                      <span>17일</span>
                    </div>
                    <div>
                      <span>상금</span>
                      <span>400만원</span>
                    </div>
                  </div>
                  <div class="contest-card-info-tag">
                    <div class="contest-card-info-tag-list">
                      <div class="tag-purple">프리미엄</div>
                      <div class="tag-pink">css</div>
                      <div class="tag-pink">html</div>
                    </div>
                    <div class="sm-only contest-card-info-profile">
                      <div class="avatar-24">
                        <img
                          src="${contextPath}/resources/assets/images/default-user-img.png"
                          alt=""
                        />
                      </div>
                      <div><span>신한은행</span></div>
                    </div>
                  </div>
                </div>
                <div class="sm-hidden contest-card-profile">
                  <div class="avatar-24">
                    <img
                      src="${contextPath}/resources/assets/images/default-user-img.png"
                    />
                  </div>
                  <div><span>신한은행</span></div>
                </div>
              </div>
            </a>
          </div>
          <!-- 카드끝 -->
        </div>
      </div>
    </main>

    <!-- footer include -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.2/min/tiny-slider.js"></script>
    <script src="${contextPath}/resources/js/slider.js"></script>

    <!-- jQuery -->
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>
  </body>
</html>
