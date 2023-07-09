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
                         <c:if test="${empty loginMember.profileImg}">
                  <img
                    src="${contextPath}/resources/assets/images/default-user-img.png"
                    alt="변경 프로필 사진"
                    id="profileImage"
                  />
                </c:if>
           <c:if test="${!empty loginMember.profileImg}">
                  <img
                    src="${contextPath}/${loginMember.profileImg}"
                    alt="변경 프로필 사진"
                    id="profileImage"
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
                   <li><a href="${contextPath}/mypage/memberTypeInfo"">내 정보</a></li>
                      <li><a href="${contextPath}/mypage/progress">공모전 관리</a></li>
                       <li><a href="${contextPath}/mypage/editP">프로필 수정</a></li>
                       <li><a href="${contextPath}/member/changePw">비밀번호 변경</a></li>
                      <li><a href="${contextPath}/member/secession">회원 탈퇴</a></li>       
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
                    
                    
                    <form action="editP" method="POST" name="myPage-form" enctype="multipart/form-data">
                      <div class="profile-header">
                        <div class="profile-edit">
                          <div class="profile-user">
                          
                            <div class="profile-img avatar">
                  <c:if test="${empty loginMember.profileImg}">
                  <img
                    src="${contextPath}/resources/assets/images/default-user-img.png"
                    alt="변경 프로필 사진"
                    id="profileImg"
                  />
                </c:if>
           <c:if test="${!empty loginMember.profileImg}">
                  <img
                    src="${contextPath}/${loginMember.profileImg}"
                    alt="변경 프로필 사진"
                    id="profileImg"
                  />
                </c:if>
                            </div>
                 <input type="file" name="uploadImage" id="inputImg" accept="image/*">
                           <label for="inputImg" class="edit-img">
                              <i class="ic-camera"></i>
                            </label>
                          </div>
                        </div>
                        
                       <input type="hidden" name="delete" id="delete" value="0">
											<!-- 삭제버튼(x)이 눌러짐을 기록하는 숨겨진 input 태그 -->
											<!-- 0 : 안눌러짐   /   1: 눌러짐 -->
				
						
						
                        <div class="nick-stack">
                          <div class="nickname-box">
                            <p class="introduce-title">닉네임</p>
                            <input
                              type="text"
                              id="nickName"
                              name="updateNickname"
                              value="${loginMember.memberNick}"
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
		                                  name="stack"
		                                  value="front"<c:if test="${loginMember.stack eq 'front'}">checked="checked"</c:if>
		                                />
		                                <label for="front">Front End</label>
		                              </div>

		                              <div class="stack-btn">
		                                <input
		                                  id="back"
		                                  type="radio"
		                                  name="stack"
		                                  value="back" <c:if test="${loginMember.stack eq 'back'}">checked="checked"</c:if>
		                                />
		                                <label for="back">Back End</label>
		                              </div>
								
		                              <div class="stack-btn">
		                                <input
		                                  id="full"
		                                  type="radio"
		                                  name="stack"
		                                  value="full"<c:if test="${loginMember.stack eq 'full'}">checked="checked"</c:if>
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
                              value="${loginMember.slogan}"
                              placeholder="자신을 기업에게 한줄로 소개 해 보세요!"
                            />
                          </div>

                          <div class="introduce-box">
                            <p class="introduce-title">자기 소개</p>
                            <textarea
                              class="introduce-content"
								name="introduce"
                              placeholder="자신을 어필할 소개를 해보세요!!"
                            >${loginMember.introduce}</textarea>
                          </div>
                        </div>
                        <div class="skill-group-box">
                          <p class="introduce-title">보유 기술</p>

                          <div class="skill-group">
                            <div class="skill-box">
                              <input type="checkbox" id="java" name="skill" value="JAVA" />
                              <label for="java">JAVA</label>
                            </div>

                            <div class="skill-box">
                              <input type="checkbox" id="spring" name="skill" value="Spring" />
                              <label for="spring">Spring</label>
                            </div>

                            <div class="skill-box">
                              <input
                                type="checkbox"
                                id="Spring Boot"
                                name="skill"
                                value="Spring Boot"
                              />
                              <label for="spring Boot">Spring Boot</label>
                            </div>
                            
                            <div class="skill-box">
                              <input
                                type="checkbox"
                                id="php"
                                name="skill"
                                value="PHP"
                              />
                              <label for="spring">PHP</label>
                            </div>

                            <div class="skill-box">
                              <input
                                type="checkbox"
                                id="oracle"
                                name="skill"
                                value="Oracle"
                              />
                              <label for="oracle">Oracle</label>
                            </div>

                            <div class="skill-box">
                              <input type="checkbox" id="python" name="skill" value="Python" />
                              <label for="python">Python</label>
                            </div>

                            <div class="skill-box">
                              <input
                                type="checkbox"
                                id="kotlin"
                                name="skill"
                                value="Kotlin"
                              />
                              <label for="kotlin">Kotlin</label>
                            </div>

                            <div class="skill-box">
                              <input type="checkbox" id="swift" name="skill" value="Swift" />
                              <label for="swift">Swift</label>
                            </div>

                            <div class="skill-box">
                              <input type="checkbox" id="ccc" name="skill" value="C++" />
                              <label for="ccc">C++</label>
                            </div>

                            <div class="skill-box">
                              <input
                                type="checkbox"
                                id="cc"
                                name="skill"
                                value="C#"
                              />
                              <label for="cc">C#</label>
                            </div>
                            
                            <div class="skill-box">
                              <input
                                type="checkbox"
                                id="html"
                                name="skill"
                                value="HTML"
                              />
                              <label for="html">HTML</label>
                            </div>
                            
                            <div class="skill-box">
                              <input
                                type="checkbox"
                                id="css"
                                name="skill"
                                value="CSS"
                              />
                              <label for="css">CSS</label>
                            </div>
                            
                            <div class="skill-box">
                              <input
                                type="checkbox"
                                id="javascript"
                                name="skill"
                                value="JavaScript"
                              />
                              <label for="javascript">JavaScript</label>
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
                              <input
                                type="checkbox"
                                id="vue-js"
                                name="skill"
                                value="Vue.js"
                              />
                              <label for="vue-js">Vue.js</label>
                            </div>
                            
                            <div class="skill-box">
                              <input
                                type="checkbox"
                                id="react"
                                name="skill"
                                value="React"
                              />
                              <label for="react">React</label>
                            </div>
                            
                            <div class="skill-box">
                              <input
                                type="checkbox"
                                id="node-js"
                                name="skill"
                                value="Node.js"
                              />
                              <label for="node-js">Node.js</label>
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
