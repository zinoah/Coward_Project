<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="${contextPath}/resources/styles/css/edit-profile-mem.css"
    />
    <title>Document</title>
  </head>
  <body>
     <!-- 헤더와 공통 네비 -->
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
    <jsp:include page="/WEB-INF/views/common/nav.jsp" />
    
    <div class="full">
      <div class="banner-top sm-hidden">
         <img src="${contextPath}/resources/assets/images/mypage-banner.png"/>
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
                       <a href="${contextPath}/mypage/myPage/progress"><li>공모전 관리</li></a>
                      <li>크레딧 인출</li>
                      <a href="${contextPath}/mypage/myPage/editP"><li>프로필 수정</li></a>
                      <li>회원 탈퇴</li>
                    </ul>
                  </div>
                </div>
              </div>
            </nav>
          </aside>

          <!-- 본문 시작 -->
          <div class="edit-profile">
            <div class="container">
              <div class="row">
                <div class="col-sm-4">
                  <div class="edit-profile-wrapper">
                    <p class="introduce-title little-title">내 정보 수정</p>
                    
                    
                    <form action="editP" method="POST" name="myPage-form">
                      <div class="profile-header">
                        <div class="profile-edit">
                          <div class="profile-user">
                          
                            <div class="profile-img avatar">
                  <c:if test="${empty loginMember.profileImg }">
                  <img
                    src="${contextPath}/resources/assets/images/default-user-img.png"
                    alt="변경 프로필 사진"
                    id="profile-image"
                  />
                </c:if>
                <c:if test="${!empty loginMember.profileImg }">
                  <img
                    src="${contextPath}/${loginMember.profileImg}"
                    alt="변경 프로필 사진"
                    id="profile-image"
                  />
                </c:if>
                            </div>
                 <input type="file" name="editImg" id="edit-img" accept="image/*">
                           <label for="edit-img" class="edit-img">
                              <i class="ic-camera"></i>
                            </label>
                          </div>
                        </div>
                       
						
						
						
                        <div class="nick-stack">
                          <div class="nickname-box">
                            <p class="introduce-title">닉네임</p>
                            <input
                              type="text"
                              id="nickName"
                              name="updateNickname"
                              value="$loginMember.memberNick"
                              placeholder="자신만의 닉네임을 설정해보세요!"
                            />
                          </div>

                          <div class="stack-box">
                            <p class="introduce-title">기술 스택</p>
                            <div class="stack-btn-group">
                              <div class="stack-btn">
                                <input
                                  id="front"
                                  type="radio"
                                  name="userStack"
                                  value="front"
                                />
                                <label for="front">Front End</label>
                              </div>

                              <div class="stack-btn">
                                <input
                                  id="back"
                                  type="radio"
                                  name="userStack"
                                  value="back"
                                />
                                <label for="back">Back End</label>
                              </div>

                              <div class="stack-btn">
                                <input
                                  id="full"
                                  type="radio"
                                  name="userStack"
                                  value="full"
                                />
                                <label for="full">Full Stack</label>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="one-intro-skill">
                        <div class="one-intro">
                          <div class="one-liner-box">
                            <p class="introduce-title">한줄 소개</p>
                            <input
                              type="text"
                              class="one-liner"
                              maxlenghth="50"
                              name="slogan"
                              placeholder="자신을 기업에게 한줄로 소개 해 보세요!"
                            />
                          </div>

                          <div class="introduce-box">
                            <p class="introduce-title">자기 소개</p>
                            <textarea
                              class="introduce-content"
								name="introduce"
                              placeholder="자신을 어필할 소개를 해보세요!!"
                            ></textarea>
                          </div>
                        </div>
                        <div class="skill-group-box">
                          <p class="introduce-title">보유 스킬</p>

                          <div class="skill-group">
                            <div class="skill-box">
                              <input type="checkbox" id="java" name="skill" value="java" />
                              <label for="java">JAVA</label>
                            </div>

                            <div class="skill-box">
                              <input type="checkbox" id="css" name="skill" value="css" />
                              <label for="css">CSS</label>
                            </div>

                            <div class="skill-box">
                              <input
                                type="checkbox"
                                id="javascript"
                                name="skill"
                                value="javascript"
                              />
                              <label for="javascript">JAVA SCRIPT</label>
                            </div>
                            <div class="skill-box">
                              <input
                                type="checkbox"
                                id="spring"
                                name="skill"
                                value="spring"
                              />
                              <label for="spring">SPRING</label>
                            </div>

                            <div class="skill-box">
                              <input
                                type="checkbox"
                                id="jQuery"
                                name="skill"
                                value="jQuery"
                              />
                              <label for="jQuery">jQuery</label>
                            </div>

                            <div class="skill-box">
                              <input type="checkbox" id="jsp" name="skill" value="jsp" />
                              <label for="jsp">JSP</label>
                            </div>

                            <div class="skill-box">
                              <input
                                type="checkbox"
                                id="oracle"
                                name="skill"
                                value="oracle"
                              />
                              <label for="oracle">ORACLE</label>
                            </div>

                            <div class="skill-box">
                              <input type="checkbox" id="mysql" name="skill" value="mysql" />
                              <label for="mysql">MySQL</label>
                            </div>

                            <div class="skill-box">
                              <input type="checkbox" id="react" name="skill" value="react" />
                              <label for="react">REACT</label>
                            </div>

                            <div class="skill-box">
                              <input
                                type="checkbox"
                                id="python"
                                name="skill"
                                value="python"
                              />
                              <label for="python">Python</label>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="submit-box">
                        <button
                          id="submit-btn"
                          class="btn-primary btn-32"
                          type="submit"
                        >
                          완료
                        </button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- 푸터 -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
    <script src="${contextPath}/resources/js/edit-profile-mem.js"></script>
  </body>
</html>
