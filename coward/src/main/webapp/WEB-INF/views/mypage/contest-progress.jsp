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
      href="${contextPath}/resources/styles/css/contest-progress.css"
    />
    <title>Coward | 마이페이지 - 공모전 관리</title>
  </head>
  <body>
  <!-- 헤더와 공통 네비 -->
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
    <jsp:include page="/WEB-INF/views/common/nav.jsp" />
    
    
    <div class="full">
    
    <!-- 마이페이지 배너 -->
      <div class="banner-top sm-hidden">
        <img src="${contextPath}/resources/assets/images/mypage-banner.png" />
      </div>

      <!-- 웹 페이지 -->
      <div class="empty-box">
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
                    <li><a href="${contextPath}/mypage/memberTypeInfo"">내 정보</a></li>
                      <li><a href="${contextPath}/mypage/progress">공모전 관리</a></li>
                       <li><a href="${contextPath}/mypage/editP">프로필 수정</a></li>
                       <li><a href="${contextPath}/member/changePw">비밀번호 변경</a></li>
                      <li><a href="${contextPath}/member/secession">회원 탈퇴</a></li>                         </ul>
                  </div>
                </div>
              </div>
            </nav>
          </aside>

          <!-- 본문 시작 -->
          <main class="contest-management">
            <div class="container">
              <div class="row">
                <div class="col-sm-4">
                  <div class="contest-progress">
                    <p class="introduce-title">공모전 관리</p>

                    <div class="progress-box-group">
                           
                      <div class="progress-box col-sm-4">
                        <!-- 기업 사진과 공모전 제목 -->
                        <div class="profile-left">
                          <div class="company-profile">
                            <div class="company-img avatar">
                              <img src="${contextPath}/${conProgress.profileImg}" />
                            </div>
                          </div>

                          <!-- 공모전 제목과 주최, 남은 기간 -->
                          <div class="contest-mid">
                            <div class="contest-title">
                            
                              <p>주식회사 휴크로스 웹 홈페이지 개발</p>
                            </div>

                            <div class="contest-content">
                              <p class="contest-company">
                                주최 : 휴크로스
                              </p>
                              <p class="deadline">D-7</p>
                            </div>
                          </div>
                        </div>
                        <div class="progress">
                          <!-- 상태에 따라 클래스 다르게 줌 -->
                          <div class="progress-color recruiting"></div>
                          <p class="progress-text">모집중</p>
                        </div>
                      </div> 
                             
                             
                      <div class="progress-box col-sm-4">
                        <!-- 기업 사진과 공모전 제목 -->
                        <div class="profile-left">
                          <div class="company-profile">
                            <div class="company-img avatar">
                              <img src="${contextPath}/${conProgress.profileImg}" />
                            </div>
                          </div>

                          <!-- 공모전 제목과 주최, 남은 기간 -->
                          <div class="contest-mid">
                            <div class="contest-title">
                            
                              <p>스크린골프 프로그램 개발</p>
                            </div>

                            <div class="contest-content">
                              <p class="contest-company">
                                주최 : 골프당
                              </p>
                              <p class="deadline">D-24</p>
                            </div>
                          </div>
                        </div>
                        <div class="progress">
                          <!-- 상태에 따라 클래스 다르게 줌 -->
                          <div class="progress-color recruiting"></div>
                          <p class="progress-text">모집중</p>
                        </div>
                      </div> 
                      
                      
                      <div class="progress-box col-sm-4">
                        <!-- 기업 사진과 공모전 제목 -->
                        <div class="profile-left">
                          <div class="company-profile">
                            <div class="company-img avatar">
                              <img src="${contextPath}/${conProgress.profileImg}" />
                            </div>
                          </div>

                          <!-- 공모전 제목과 주최, 남은 기간 -->
                          <div class="contest-mid">
                            <div class="contest-title">
                            
                              <p>비즈메시지 발송 웹사이트</p>
                            </div>

                            <div class="contest-content">
                              <p class="contest-company">
                                주최 : 주식회사 핑크코브라
                              </p>
                              
                            </div>
                          </div>
                        </div>
                        <div class="progress">
                          <!-- 상태에 따라 클래스 다르게 줌 -->
                          <div class="progress-color complete"></div>
                          <p class="progress-text">👑 완료</p>
                        </div>
                      </div> 
                      
                      
                      <div class="progress-box col-sm-4">
                        <!-- 기업 사진과 공모전 제목 -->
                        <div class="profile-left">
                          <div class="company-profile">
                            <div class="company-img avatar">
                              <img src="${contextPath}/${conProgress.profileImg}" />
                            </div>
                          </div>

                          <!-- 공모전 제목과 주최, 남은 기간 -->
                          <div class="contest-mid">
                            <div class="contest-title">
                            
                              <p>전북현대 웹사이트 리뉴얼</p>
                            </div>

                            <div class="contest-content">
                              <p class="contest-company">
                                주최 : 더스포츠커뮤니케이션
                              </p>
                              
                            </div>
                          </div>
                        </div>
                        <div class="progress">
                          <!-- 상태에 따라 클래스 다르게 줌 -->
                          <div class="progress-color under-review"></div>
                          <p class="progress-text">심사중</p>
                        </div>
                      </div> 
                      
                      
                      
                      <div class="progress-box col-sm-4">
                        <!-- 기업 사진과 공모전 제목 -->
                        <div class="profile-left">
                          <div class="company-profile">
                            <div class="company-img avatar">
                              <img src="${contextPath}/${conProgress.profileImg}" />
                            </div>
                          </div>

                          <!-- 공모전 제목과 주최, 남은 기간 -->
                          <div class="contest-mid">
                            <div class="contest-title">
                            
                              <p>여행 종합 플랫폼 웹 개발</p>
                            </div>

                            <div class="contest-content">
                              <p class="contest-company">
                                주최 : 이런여행
                              </p>
                            </div>
                          </div>
                        </div>
                        <div class="progress">
                          <!-- 상태에 따라 클래스 다르게 줌 -->
                          <div class="progress-color complete"></div>
                          <p class="progress-text">완료</p>
                        </div>
                      </div> 
                      
                      
                      
                      <div class="progress-box col-sm-4">
                        <!-- 기업 사진과 공모전 제목 -->
                        <div class="profile-left">
                          <div class="company-profile">
                            <div class="company-img avatar">
                              <img src="${contextPath}/${conProgress.profileImg}" />
                            </div>
                          </div>

                          <!-- 공모전 제목과 주최, 남은 기간 -->
                          <div class="contest-mid">
                            <div class="contest-title">
                            
                              <p>급여명세서 서비스 app 개발</p>
                            </div>

                            <div class="contest-content">
                              <p class="contest-company">
                                주최 : 위솔
                              </p>
                              <p class="deadline">D-41</p>
                            </div>
                          </div>
                        </div>
                        <div class="progress">
                          <!-- 상태에 따라 클래스 다르게 줌 -->
                          <div class="progress-color recruiting"></div>
                          <p class="progress-text">모집중</p>
                        </div>
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

  <jsp:include page="/WEB-INF/views/common/footer.jsp" />
  </body>
</html>
