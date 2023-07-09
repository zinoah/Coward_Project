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
        <img src="${contextPath}/resources/assets/images/mypage-banner.png" />
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
                          <c:if test="${empty loginMember.profileImg}">
                            <img
                              src="${contextPath}/resources/assets/images/default-user-img.png"
                              alt="변경 프로필 사진"
                              id="profile-image"
                            />
                          </c:if>
                          <c:if test="${!empty loginMember.profileImg}">
                            <img
                              src="${contextPath}/${loginMember.profileImg}"
                              alt="변경 프로필 사진"
                              id="profile-image"
                            />
                          </c:if>
                        </div>
                      </div>

                      <div class="profile-info">
                        <div class="profile-type">${loginMember.stack}</div>
                        <p class="profile-nick">${loginMember.memberNick}</p>
                      </div>
                    </div>

                    <ul class="category-bar">
					 <li><a href="${contextPath}/mypage/Info">내 정보</a></li>
                      <li><a href="${contextPath}/mypage/progress">공모전 관리</a></li>
                      <li><a href="${contextPath}/mypage/exchange">크레딧 인출</a></li>
                       <li><a href="${contextPath}/mypage/editP">프로필 수정</a></li>
                       <li><a href="${contextPath}/member/changePw">비밀전호 변경</a></li>
                      <li><a href="${contextPath}/member/secession">회원 탈퇴</a></li>                    </ul>
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
                        <c:if test="${empty loginMember.profileImg}">
                          <img
                            src="${contextPath}/resources/assets/images/default-user-img.png"
                            alt="변경 프로필 사진"
                            id="profile-image"
                          />
                        </c:if>
                        <c:if test="${!empty loginMember.profileImg}">
                          <img
                            src="${contextPath}/${loginMember.profileImg}"
                            alt="변경 프로필 사진"
                            id="profile-image"
                          />
                        </c:if>
                      </div>

                      <div class="profile-info">
                        <div class="profile-type">${loginMember.stack}</div>
                        <p class="profile-nick">${loginMember.memberNick}</p>
                      </div>
                    </div>

                    <div class="web-box-header">
                      <div class="one-credit-skill">
                        <!-- 자기 소개 -->
                        <div class="one-liner">
                          <p class="introduce-title">소개</p>
                          <textarea disabled>${loginMember.introduce}</textarea>
                        </div>

                        <div class="credit-skill">
                          <!-- 코워드 크레딧 -->
                          <div class="credit lg-only">
                            <p class="introduce-title">코워드 크레딧</p>

                            <div class="credit-box">
                              <div class="credit-c">C</div>
                              <p class="credit-amount">
                                ${loginMember.currPrice} <p class="won">만원
                             </p>
                            </div>
                          </div>

                          <!-- 내 기술 -->
                          <div class="skill">
                            <p class="introduce-title">나의 기술</p>
                            <div class="skill-box">
                              <div class="my-skill">JavaScript</div>
                              <div class="my-skill">CSS</div>
                              <div class="my-skill">Java</div>
                              <div class="my-skill">Oracle</div>
                              <div class="my-skill">Spring</div>
                            </div>
                          </div>
                        <div class="award">
                        <p class="introduce-title">어워드</p>

                        <div class="award-box">
                         
                          <table class="award-table">
                            <tr class="award-table-num">
                              <td>${loginMember.attendCount}</td>
                              <td>${loginMember.victoryCount}</td>
                             
                            </tr>
                            <tr class="award-table-title">
                              <td>참여 횟수</td>
                              <td>우승 횟수</td>
                              
                            </tr>
                          </table>
                        </div>
                      </div>
                        </div>
                        
                      </div>

                      <!-- 수상 이력 -->
                      
                    </div>

                    <!-- 관심 목록 -->
                    <div class="watchlist">
                      <p class="introduce-title">관심 공모전</p>

                      <!-- 모바일, 태블릿 -->
                      <div class="row lg-hidden">
                        <div class="watchlist-box-group col-sm-4 col-md-12">
                          <div class="col-sm-4 col-md-6 col-lg-3">
                            <div class="contest-card">
                             
                              <div class="contest-card-title">
                                <div><span>exercowork 모바일 앱 콘테스트</span></div>
                                <div class="tag-yellow">new</div>
                              </div>
                              <div class="contest-card-info">
                                <div class="contest-card-info-detail">
                                  <div>
                                    <span>남은기간</span>
                                    <span>43일</span>
                                  </div>
                                  <div>
                                    <span>상금</span>
                                    <span>200만원</span>
                                  </div>
                                </div>
                                <div class="contest-card-info-tag">
                                  <div class="contest-card-info-tag-list">
                                    <div class="tag-purple">프리미엄</div>
                                    <div class="tag-pink">Java</div>
                                    <div class="tag-pink">JavaScript</div>
                                    <div class="tag-pink">Oracle</div>
                                  </div>
                                  <div
                                    class="sm-only contest-card-info-profile"
                                  >
                                    <div class="avatar-24">
                                     <img
                                    src="${contextPath}/resources/assets/images/dummy/profile-img/default-user-img.png"
                                    id="profileImg"
                                  />
                                    </div>
                                    <div><span>exercowork</span></div>
                                  </div>
                                </div>
                              </div>
                              <div class="contest-card-profile sm-hidden">
                                <div class="avatar-24">
                                  <img
                                    src="${contextPath}/resources/assets/images/dummy/profile-img/default-user-img.png"
                                    id="profileImg"
                                  />
                                </div>
                                <div><span>exercowork</span></div>
                              </div>
                            </div>
                          </div>
                          
                          
                          <div class="col-sm-4 col-md-6 col-lg-3">
                            <div class="contest-card">
                             
                              <div class="contest-card-title">
                                <div><span>대전 굿모닝보청기 웹 개발</span></div>
                                
                              </div>
                              <div class="contest-card-info">
                                <div class="contest-card-info-detail">
                                  <div>
                                    <span>남은기간</span>
                                    <span>24일</span>
                                  </div>
                                  <div>
                                    <span>상금</span>
                                    <span>120만원</span>
                                  </div>
                                </div>
                                <div class="contest-card-info-tag">
                                  <div class="contest-card-info-tag-list">
                                    <div class="tag-purple">일반형</div>
                                    <div class="tag-pink">Java</div>
                                    <div class="tag-pink">JavaScript</div>
                                    <div class="tag-pink">CSS</div>
                                    <div class="tag-pink">jQuery</div>
                                  </div>
                                  <div
                                    class="sm-only contest-card-info-profile"
                                  >
                                    <div class="avatar-24">
                                     <img
                                    src="${contextPath}/resources/assets/images/dummy/profile-img/default-user-img.png"
                                    id="profileImg"
                                  />
                                    </div>
                                    <div><span>굿모닝보청기</span></div>
                                  </div>
                                </div>
                              </div>
                              <div class="contest-card-profile sm-hidden">
                                <div class="avatar-24">
                                 <img
                                    src="${contextPath}/resources/assets/images/dummy/profile-img/default-user-img.png"
                                    id="profileImg"
                                  />
                                </div>
                                <div><span>굿모닝보청기</span></div>
                              </div>
                            </div>
                          </div>
                          
                          <div class="col-sm-4 col-md-6 col-lg-3">
                            <div class="contest-card">
                             
                              <div class="contest-card-title">
                                <div><span>외국어 단어 학습 앱개발</span></div>
                               
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
                                    <div class="tag-pink">Spring Boot</div>
                                    <div class="tag-pink">JavaScript</div>
                                    <div class="tag-pink">Oracle</div>
                                    <div class="tag-pink">jQuery</div>
                                    <div class="tag-pink">React</div>
                                  </div>
                                  <div
                                    class="sm-only contest-card-info-profile"
                                  >
                                    <div class="avatar-24">
                                     <img
                                    src="${contextPath}/resources/assets/images/dummy/profile-img/default-user-img.png"
                                    id="profileImg"
                                  />
                                    <div><span>주식회사 호두</span></div>
                                  </div>
                                </div>
                              </div>
                              <div class="contest-card-profile sm-hidden">
                                <div class="avatar-24">
                                 <img
                                    src="${contextPath}/resources/assets/images/dummy/profile-img/default-user-img.png"
                                    id="profileImg"
                                  />
                                </div>
                                <div><span>주식회사 호두</span></div>
                              </div>
                            </div>
                          </div>
                          
                          <div class="col-sm-4 col-md-6 col-lg-3">
                            <div class="contest-card">
                             
                              <div class="contest-card-title">
                                <div><span>피치트리 웹 홈페이지 개발</span></div>
                                <div class="tag-yellow">new</div>
                              </div>
                              <div class="contest-card-info">
                                <div class="contest-card-info-detail">
                                  <div>
                                    <span>남은기간</span>
                                    <span>33일</span>
                                  </div>
                                  <div>
                                    <span>상금</span>
                                    <span>250만원</span>
                                  </div>
                                </div>
                                <div class="contest-card-info-tag">
                                  <div class="contest-card-info-tag-list">
                                    <div class="tag-purple">고급형</div>
                                    <div class="tag-pink">Java</div>
                                    <div class="tag-pink">CSS</div>
                                    <div class="tag-pink">JavaScript</div>
                                    <div class="tag-pink">React</div>
                                    
                                  </div>
                                  <div
                                    class="sm-only contest-card-info-profile"
                                  >
                                    <div class="avatar-24">
                                     <img
                                    src="${contextPath}/resources/assets/images/dummy/profile-img/default-user-img.png"
                                    id="profileImg"
                                  />
                                    </div>
                                    <div><span>주식회사 피치트리</span></div>
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
                                <div><span>주식회사 피치트리</span></div>
                              </div>
                            </div>
                          </div>
                          
                          <div class="col-sm-4 col-md-6 col-lg-3">
                            <div class="contest-card">
                             
                              <div class="contest-card-title">
                                <div><span>숙취해소제 깨온 상세페이지 앱개발</span></div>
                                <div class="tag-yellow">new</div>
                              </div>
                              <div class="contest-card-info">
                                <div class="contest-card-info-detail">
                                  <div>
                                    <span>남은기간</span>
                                    <span>20일</span>
                                  </div>
                                  <div>
                                    <span>상금</span>
                                    <span>100만원</span>
                                  </div>
                                </div>
                                <div class="contest-card-info-tag">
                                  <div class="contest-card-info-tag-list">
                                    <div class="tag-purple">일반형</div>
                                    <div class="tag-pink">HTML</div>
                                    <div class="tag-pink">CSS</div>
                                    <div class="tag-pink">JavaScript</div>
                                  </div>
                                  <div
                                    class="sm-only contest-card-info-profile"
                                  >
                                    <div class="avatar-24">
                                      <img
                                    src="${contextPath}/resources/assets/images/dummy/profile-img/default-user-img.png"
                                    id="profileImg"
                                  />
                                    </div>
                                    <div><span>(주)239바이오</span></div>
                                  </div>
                                </div>
                              </div>
                              <div class="contest-card-profile sm-hidden">
                                <div class="avatar-24">
                                 <img
                                    src="${contextPath}/resources/assets/images/dummy/profile-img/default-user-img.png"
                                    id="profileImg"
                                  />
                                <div><span>(주)239바이오</span></div>
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
                               <div class="col-sm-4 col-md-6 col-lg-3">
                            <div class="contest-card">
                             
                              <div class="contest-card-title">
                                <div><span>exercowork 모바일 앱 개발</span></div>
                                <div class="tag-yellow">new</div>
                              </div>
                              <div class="contest-card-info">
                                <div class="contest-card-info-detail">
                                  <div>
                                    <span>남은기간</span>
                                    <span>43일</span>
                                  </div>
                                  <div>
                                    <span>상금</span>
                                    <span>200만원</span>
                                  </div>
                                </div>
                                <div class="contest-card-info-tag">
                                  <div class="contest-card-info-tag-list">
                                    <div class="tag-purple">프리미엄</div>
                                    <div class="tag-pink">Java</div>
                                    <div class="tag-pink">JavaScript</div>
                                    <div class="tag-pink">Oracle</div>
                                  </div>
                                  <div
                                    class="sm-only contest-card-info-profile"
                                  >
                                    <div class="avatar-24">
                                     <img
                                    src="${contextPath}/resources/assets/images/dummy/profile-img/default-user-img.png"
                                    id="profileImg"
                                  />
                                    </div>
                                    <div><span>exercowork</span></div>
                                  </div>
                                </div>
                              </div>
                              <div class="contest-card-profile sm-hidden">
                                <div class="avatar-24">
                                  <img
                                    src="${contextPath}/resources/assets/images/dummy/profile-img/default-user-img.png"
                                    id="profileImg"
                                  />
                                </div>
                                <div><span>exercowork</span></div>
                              </div>
                            </div>
                          </div>
                              </div>

                              

                              <div>
                                <div class="contest-card">
                             
                              <div class="contest-card-title">
                                <div><span>대전 굿모닝보청기 웹 개발</span></div>
                              </div>
                              <div class="contest-card-info">
                                <div class="contest-card-info-detail">
                                  <div>
                                    <span>남은기간</span>
                                    <span>24일</span>
                                  </div>
                                  <div>
                                    <span>상금</span>
                                    <span>120만원</span>
                                  </div>
                                </div>
                                <div class="contest-card-info-tag">
                                  <div class="contest-card-info-tag-list">
                                    <div class="tag-purple">일반형</div>
                                    <div class="tag-pink">Java</div>
                                    <div class="tag-pink">JavaScript</div>
                                    <div class="tag-pink">CSS</div>
                                    <div class="tag-pink">jQuery</div>
                                  </div>
                                  <div
                                    class="sm-only contest-card-info-profile"
                                  >
                                    <div class="avatar-24">
                                     <img
                                    src="${contextPath}/resources/assets/images/dummy/profile-img/default-user-img.png"
                                    id="profileImg"
                                  />
                                    <div><span>굿모닝보청기</span></div>
                                  </div>
                                </div>
                              </div>
                              <div class="contest-card-profile sm-hidden">
                                <div class="avatar-24">
                                 <img
                                    src="${contextPath}/resources/assets/images/dummy/profile-img/default-user-img.png"
                                    id="profileImg"
                                  />
                                <div><span>굿모닝보청기</span></div>
                              </div>
                            </div>
                              </div>
                              
                              <div>
                                   <div class="contest-card">
                             
                              <div class="contest-card-title">
                                <div><span>외국어 단어 학습 앱개발</span></div>
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
                                    <div class="tag-pink">Spring Boot</div>
                                    <div class="tag-pink">JavaScript</div>
                                    <div class="tag-pink">Oracle</div>
                                    <div class="tag-pink">jQuery</div>
                                    <div class="tag-pink">React</div>
                                  </div>
                                  <div
                                    class="sm-only contest-card-info-profile"
                                  >
                                    <div class="avatar-24">
                                      <img
                                    src="${contextPath}/resources/assets/images/dummy/profile-img/default-user-img.png"
                                    id="profileImg"
                                  />
                                    </div>
                                    <div><span>주식회사 호두</span></div>
                                  </div>
                                </div>
                              </div>
                              <div class="contest-card-profile sm-hidden">
                                <div class="avatar-24">
                                 <img
                                    src="${contextPath}/resources/assets/images/dummy/profile-img/default-user-img.png"
                                    id="profileImg"
                                  />
                                </div>
                                <div><span>주식회사 호두</span></div>
                              </div>
                            </div>
                              </div>
                              
                              <div>
                               <div class="contest-card">
                             
                              <div class="contest-card-title">
                                <div><span>피치트리 웹 홈페이지 개발</span></div>
                                <div class="tag-yellow">new</div>
                              </div>
                              <div class="contest-card-info">
                                <div class="contest-card-info-detail">
                                  <div>
                                    <span>남은기간</span>
                                    <span>33일</span>
                                  </div>
                                  <div>
                                    <span>상금</span>
                                    <span>250만원</span>
                                  </div>
                                </div>
                                <div class="contest-card-info-tag">
                                  <div class="contest-card-info-tag-list">
                                    <div class="tag-purple">고급형</div>
                                    <div class="tag-pink">Java</div>
                                    <div class="tag-pink">CSS</div>
                                    <div class="tag-pink">JavaScript</div>
                                    <div class="tag-pink">React</div>
                                    
                                  </div>
                                  <div
                                    class="sm-only contest-card-info-profile"
                                  >
                                    <div class="avatar-24">
                                     <img
                                    src="${contextPath}/resources/assets/images/dummy/profile-img/default-user-img.png"
                                    id="profileImg"
                                  />
                                    </div>
                                    <div><span>주식회사 피치트리</span></div>
                                  </div>
                                </div>
                              </div>
                              <div class="contest-card-profile sm-hidden">
                                <div class="avatar-24">
                                 <img
                                    src="${contextPath}/resources/assets/images/dummy/profile-img/default-user-img.png"
                                    id="profileImg"
                                  />
                                </div>
                                <div><span>주식회사 피치트리</span></div>
                              </div>
                            </div>
                              </div>
                              
                              <div>
                                  <div class="contest-card">
                             
                              <div class="contest-card-title">
                                <div><span>숙취해소제 깨온 상세페이지 앱개발</span></div>
                                <div class="tag-yellow">new</div>
                              </div>
                              <div class="contest-card-info">
                                <div class="contest-card-info-detail">
                                  <div>
                                    <span>남은기간</span>
                                    <span>20일</span>
                                  </div>
                                  <div>
                                    <span>상금</span>
                                    <span>100만원</span>
                                  </div>
                                </div>
                                <div class="contest-card-info-tag">
                                  <div class="contest-card-info-tag-list">
                                    <div class="tag-purple">일반형</div>
                                    <div class="tag-pink">HTML</div>
                                    <div class="tag-pink">CSS</div>
                                    <div class="tag-pink">JavaScript</div>
                                  </div>
                                  <div
                                    class="sm-only contest-card-info-profile"
                                  >
                                    <div class="avatar-24">
                                      <img
                                    src="${contextPath}/resources/assets/images/dummy/profile-img/default-user-img.png"
                                    id="profileImg"
                                  />
                                    </div>
                                    <div><span>(주)239바이오</span></div>
                                  </div>
                                </div>
                              </div>
                              <div class="contest-card-profile sm-hidden">
                                <div class="avatar-24">
                                  <img
                                    src="${contextPath}/resources/assets/images/dummy/profile-img/default-user-img.png"
                                    id="profileImg"
                                  />
                                </div>
                                <div><span>(주)239바이오</span></div>
                              </div>
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

                        <!-- 본문 끝 -->
                      </div>
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
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
    <!-- tiny-slider -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.2/min/tiny-slider.js"></script>
    <script src="${contextPath}/resources/js/mypage-slider.js"></script>
  </body>
</html>
