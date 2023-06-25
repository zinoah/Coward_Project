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
      href="${contextPath}/resources/styles/css/mypage-main-mem.css"
    />
    <title>Coward | 마이페이지</title>
  </head>

  <body>
    <!-- 헤더와 공통 네비 -->
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
    <jsp:include page="/WEB-INF/views/common/nav.jsp" />
    
    <!-- 배너 -->
    <!-- web-box 중앙 배치 위해 -->
    <div class="full">
      <div class="banner-top sm-hidden">
        <img src="${contextPath}/resources/assets/images/mypage-banner.png"/>
      </div>

      <!-- 웹 페이지 -->
      <!-- 웹에서 헤더랑 푸터 사이 간격 주기 위해 사용 -->
      <div class="empty-box">
        <!-- 네비 + 내용을 감싸는 박스(모든 페이지 크기 고정)-->
        <div class="web-box">
          <!-- 네비게이션 바 -->

          <aside>
            <nav class="category">
              <div class="container">
                <div class="row">
                  <div class="col-sm-4 category-web">
                    <p class="profile-mypage lg-only">마이페이지</p>
                    <div class="profile lg-only">
                      <div class="profile-img-box">
                        <div class="profile-img avatar">
                          <img
                            src="${contextPath}/resources/assets/images/default-user-img.png"
                          />
                        </div>
                      </div>

                      <div class="profile-info">
                        <div class="profile-type">Back</div>
                        <p class="profile-nick">빡과장</p>
                      </div>
                    </div>

                    <ul class="category-bar">
                      <li><a href="#">내 정보</a></li>
                       <a href="${contextPath}/mypage/myPage/progress"><li>공모전 관리</li></a>
                      <li><a href="#">크레딧 인출</a></li>
                      <li><a href="#">프로필 수정</a></li>
                      <li><a href="#">회원 탈퇴</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </nav>
          </aside>

          <!-- 본문 시작 -->
          <main class="profile-mem">
            <div class="container">
              <div class="row">
                <div class="col-sm-4">
                  <div class="profile-wrapper">
                    <!-- 프로필 박스 -->

                    <div class="profile lg-hidden">
                      <div class="profile-img avatar">
                        <img
                          src="${contextPath}/resources/assets/images/default-user-img.png"
                        />
                      </div>
                      <div class="profile-info">
                        <div class="profile-type">Back</div>
                        <p class="profile-nick">빡과장</p>
                      </div>
                    </div>

                    <div class="web-box-header">
                      <div class="one-credit-skill">
                        <!-- 자기 소개 -->
                        <div class="one-liner">
                          <p class="introduce-title">소개</p>
                          <textarea type="text" disabled></textarea>
                        </div>

                        <div class="credit-skill">
                          <!-- 코워드 크레딧 -->
                          <div class="credit lg-only">
                            <p class="introduce-title">코워드 크레딧</p>

                            <div class="credit-box">
                              <div class="credit-c">C</div>
                              <p class="credit-amount">123,456,789</p>
                            </div>
                          </div>

                          <!-- 내 기술 -->
                          <div class="skill">
                            <p class="introduce-title">나의 기술</p>
                            <div class="skill-box">
                              <div class="my-skill">Java Script</div>
                              <div class="my-skill">CSS</div>
                              <div class="my-skill">Java</div>
                              <div class="my-skill">Spring</div>
                              <div class="my-skill">Java Script</div>
                              <div class="my-skill">CSS</div>
                            </div>
                          </div>
                        </div>
                      </div>

                      <!-- 수상 이력 -->
                      <div class="award">
                        <p class="introduce-title">어워드</p>

                        <div class="award-box">
                          <div class="progress" data-percent="${rate}">
                            <span class="progress-result"></span>
                          </div>
                          <table class="award-table">
                            <tr class="award-table-num">
                              <td>10</td>
                              <td>5</td>
                              <td class="lg-hidden">50%</td>
                            </tr>
                            <tr class="award-table-title">
                              <td>참여 횟수</td>
                              <td>당선작</td>
                              <td class="lg-hidden">당선률</td>
                            </tr>
                          </table>
                        </div>
                      </div>
                    </div>

                    <!-- 관심 목록 -->
                    <div class="watchlist">
                      <p class="introduce-title">관심 공모전</p>

                      <!-- 모바일, 태블릿 -->
                      <div class="row lg-hidden">
                        <div class="watchlist-box-group col-sm-4 col-md-12">
                          <div class="col-sm-4 col-md-6 col-lg-3">
                            <div class="contest-card">
                              <div class="bookmark">
                                <i class="ic-bookmark-filled"></i>
                              </div>
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
                                  <div
                                    class="sm-only contest-card-info-profile"
                                  >
                                    <div class="avatar-24">
                                      <img
                                        src="../assets/images/default-user-img.png"
                                        alt=""
                                      />
                                    </div>
                                    <div><span>신한은행</span></div>
                                  </div>
                                </div>
                              </div>
                              <div class="contest-card-profile sm-hidden">
                                <div class="avatar-24">
                                  <img
                                    src="../assets/images/default-user-img.png"
                                    alt=""
                                  />
                                </div>
                                <div><span>신한은행</span></div>
                              </div>
                            </div>
                          </div>

                          <div class="col-sm-4 col-md-6 col-lg-3">
                            <div class="contest-card">
                              <div class="bookmark">
                                <i class="ic-bookmark-filled"></i>
                              </div>
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
                                  <div
                                    class="sm-only contest-card-info-profile"
                                  >
                                    <div class="avatar-24">
                                      <img
                                        src="../assets/images/default-user-img.png"
                                        alt=""
                                      />
                                    </div>
                                    <div><span>신한은행</span></div>
                                  </div>
                                </div>
                              </div>
                              <div class="contest-card-profile sm-hidden">
                                <div class="avatar-24">
                                  <img
                                    src="../assets/images/default-user-img.png"
                                    alt=""
                                  />
                                </div>
                                <div><span>신한은행</span></div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>

                      <!-- 웹 -->

                      <div class="row lg-only">
                        <div class="col-sm-4">
                          <div class="slider-wrapper">
                            <div class="contest-slider">
                              <div>
                                <div class="contest-card">
                                  <div class="bookmark">
                                    <i class="ic-bookmark-filled"></i>
                                  </div>
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
                                      <div
                                        class="sm-only contest-card-info-profile"
                                      >
                                        <div class="avatar-24">
                                          <img
                                            src="../assets/images/default-user-img.png"
                                            alt=""
                                          />
                                        </div>
                                        <div><span>신한은행</span></div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="contest-card-profile sm-hidden">
                                    <div class="avatar-24">
                                      <img
                                        src="../assets/images/default-user-img.png"
                                        alt=""
                                      />
                                    </div>
                                    <div><span>신한은행</span></div>
                                  </div>
                                </div>
                              </div>

  								<div>
                                <div class="contest-card">
                                  <div class="bookmark">
                                    <i class="ic-bookmark-filled"></i>
                                  </div>
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
                                      <div
                                        class="sm-only contest-card-info-profile"
                                      >
                                        <div class="avatar-24">
                                          <img
                                            src="../assets/images/default-user-img.png"
                                            alt=""
                                          />
                                        </div>
                                        <div><span>신한은행</span></div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="contest-card-profile sm-hidden">
                                    <div class="avatar-24">
                                      <img
                                        src="../assets/images/default-user-img.png"
                                        alt=""
                                      />
                                    </div>
                                    <div><span>신한은행</span></div>
                                  </div>
                                </div>
                              </div>
                              
                                <div>
                                <div class="contest-card">
                                  <div class="bookmark">
                                    <i class="ic-bookmark-filled"></i>
                                  </div>
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
                                      <div
                                        class="sm-only contest-card-info-profile"
                                      >
                                        <div class="avatar-24">
                                          <img
                                            src="../assets/images/default-user-img.png"
                                            alt=""
                                          />
                                        </div>
                                        <div><span>신한은행</span></div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="contest-card-profile sm-hidden">
                                    <div class="avatar-24">
                                      <img
                                        src="../assets/images/default-user-img.png"
                                        alt=""
                                      />
                                    </div>
                                    <div><span>신한은행</span></div>
                                  </div>
                                </div>
                              </div>
                              
                                <div>
                                <div class="contest-card">
                                  <div class="bookmark">
                                    <i class="ic-bookmark-filled"></i>
                                  </div>
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
                                      <div
                                        class="sm-only contest-card-info-profile"
                                      >
                                        <div class="avatar-24">
                                          <img
                                            src="../assets/images/default-user-img.png"
                                            alt=""
                                          />
                                        </div>
                                        <div><span>신한은행</span></div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="contest-card-profile sm-hidden">
                                    <div class="avatar-24">
                                      <img
                                        src="../assets/images/default-user-img.png"
                                        alt=""
                                      />
                                    </div>
                                    <div><span>신한은행</span></div>
                                  </div>
                                </div>
                              </div>
                           

                            <div class="slider-controls">
                              <button
                                class="control-button is-prev"
                                type="button"
                              >
                                <i class="ic-chevron"></i>
                              </button>
                              <button
                                class="control-button is-next"
                                type="button"
                              >
                                <i class="ic-chevron"></i>
                              </button>
                            </div>
                          </div>
                        </div>
                      </div>

                      <!-- 본문 끝 -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </main>
        </div>
      </div>
    </div>
    <!-- 푸터 -->
    <footer class="footer">
      <div class="container">
        <div class="row">
          <div class="col-sm-4 col-md-2 col-lg-3">
            <h1 class="logo">
              <a href="#">
                <img
                  src="${contextPath}/resources/assets/images/home_logo.svg"
                  alt="Coward"
                />
              </a>
            </h1>
          </div>

          <div class="col-sm-4 col-md-5 col-lg-3">
            <div class="service-center">
              <a href="#">
                <h3>고객센터</h3>
                <i class="ic-chevron"></i>
              </a>
            </div>
            <div class="service-info">
              <div class="row">
                <div class="service-info-wrapper">
                  <div class="service-info-time">
                    <div class="service-info-title">상담시간</div>
                    <p>
                      평일 11:00 ~ 17:00 <br />
                      점심 12:30 ~ 13:30 <br />
                      (주말, 공휴일 제외)
                    </p>
                  </div>

                  <div class="service-info-tel">
                    <div class="service-info-title">연락처</div>
                    <a class="footer-tel" href="tel:02-1234-5678"
                      >02-1234-5678</a
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-4">
          <address class="footer-info sm-hidden">
            <p>서울특별시 강남구 테헤란로14길 6 남도빌딩 2F, 3F, 4F, 5F, 6F</p>
            <p>Copyright © 2023 Coawrd All Right Reserved</p>
          </address>
        </div>

        <div class="col-sm-4">
          <div class="footer-links">
            <div class="row">
              <div class="footer-links-wrapper">
                <div class="icon-link">
                  <a class="icon-link-item" href="#"
                    ><img
                      src="${contextPath}/resources/assets/images/github.png"
                      alt="Github 바로가기"
                  /></a>
                  <a class="icon-link-item" href="#">
                    <img
                      src="${contextPath}/resources/assets/images/notion.png"
                      alt="Notion 바로가기"
                    />
                  </a>
                  <a class="icon-link-item" href="#"
                    ><img
                      src="${contextPath}/resources/assets/images/figma.png"
                      alt="Figma 바로가기"
                  /></a>
                </div>

                <div class="text-link">
                  <ul class="text-link-list">
                    <li class="text-link-item"><a href="#">이용가이드</a></li>
                    <li class="text-link-item">
                      <a href="#">개인정보처리방침</a>
                    </li>
                    <li class="text-link-item"><a href="#">이용약관</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
        <address class="footer-info sm-only">
          <p>서울특별시 강남구 테헤란로14길 6 남도빌딩 2F, 3F, 4F, 5F, 6F</p>
          <p>Copyright © 2023 Coawrd All Right Reserved</p>
        </address>
      </div>
    </footer>
    <!-- tiny-slider -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.2/min/tiny-slider.js"></script>
    <script src="${contextPath}/resources/js/mypage-slider.js"></script>
  </body>
</html>
