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
                      <li><a href="#">내 정보</a></li>
                      <li><a href="${contextPath}/mypage/myPage/progress">공모전 관리</a></li>
                      <li><a href="#">크레딧 인출</a></li>
                       <li><a href="${contextPath}/mypage/myPage/edit-profile">프로필 수정</a></li>
                      <li><a href="#">회원 탈퇴</a></li>
                    </ul>
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
                              <img
                                src="${contextPath}/resources/assets/images/default-user-img.png"
                              />
                            </div>
                          </div>

                          <!-- 공모전 제목과 주최, 남은 기간 -->
                          <div class="contest-mid">
                            <div class="contest-title">
                            
                            <!-- foreach로 for문 돌려서 -> 메인페이지 참고 -->
                              <p>스마트스토어 웹사이트 제작 공모전</p>
                            </div>

                            <div class="contest-content">
                              <p class="contest-company">
                                주최 : 스마트스토어 공단
                              </p>
                              <p class="deadline">D-15</p>
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
