<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Coward | 공모전 관리</title>

    <link
      rel="stylesheet"
      href="${contextPath}/resources/styles/css/contest-winnerSelect.css"
    />
        
    <link
      rel="stylesheet"
      href="/coward/src/main/webapp/resources/styles/css/contest-form-modal.css"
    />
  </head>

  <body>
   <jsp:include page="/WEB-INF/views/common/header.jsp" />
   <jsp:include page="/WEB-INF/views/common/nav.jsp" />

    <div class="banner-top sm-hidden">
      <img
        src="${contextPath}/resources/assets/images/mypage-banner.png"
        aria-hidden
      />
    </div>

    <main class="contest-top">
      <div class="container">
        <div class="row">
          <div class="col-sm-4 sm-only">
            <h3>식품 쇼핑몰 웹사이트 콘테스트</h3>
          </div>

          <div class="col-md-6 col-lg-4 sm-hidden">
            <h2 class>식품 쇼핑몰 웹사이트 콘테스트</h2>
          </div>

          <div class="col-md-6 col-lg-8 sm-hidden">
              <div class="status">
              <p>심사중</p>
            </div>
          </div>

          <div class="col-sm-2">
            <h6>남은기간 &nbsp; 참가인원 &nbsp; 우승인원</h6>
            <pre>17일   15명   1/2</pre>
          </div>

          <div class="col-sm-1 sm-only">
            <div class="status">
              <p>심사중</p>
             
            </div>
          </div>
    
        </div>
      </div>
    </main>

    <!-- 결과(후보/ 우승) 구별해서 보여주는 기능 필요여부???-->
    <main class="contest">
      <div class="container">
        <div class="row">
        
            <c:forEach var="member" items="${selectWinnerList}">
          <div class="col-sm-4 col-md-6 col-lg-4" id="all-col">
            <div class="card">
              <div class="profile-section">
                <img
                  src="${contextPath}/${member.profileImg}"
                  name="profile-image"
                />
                <div class="profile-div">
                  <div class="profile-name-div">
                    <h4 class="profile-name">${member.memberNick}</h4>
                    <div class="coding-type">${member.stack}</div>
              
                  </div>
                  <div class="one-line-intro">${member.slogan}</div>
                </div>
              </div>

              <div class="profile-button-wrapper">
                <button class="btn-40 btn-outlined">제출품 보기</button>
                <button class="btn-40 btn-primary">채팅하기</button>
              </div>
            </div>
          </div>
          </c:forEach>
    

          <div class="col-sm-4">
            <div class="contest-button-wrapper">
              <button class="btn-secondary">임시저장</button>
              <button class="btn-secondary">심사완료</button>
            </div>
          </div>
        </div>
      </div>
      
      
       <div class="background">
        <div class="window">
          <div class="popup">
            <div class="profile-section">
              <img src="../assets/images/default-user-img.png" />
              <h4>닉네임</h4>
              <div class="coding-type">back</div>
            </div>

            <div class="intro">
              <div>
                <h5 class="simple-intro-title">간단 설명</h5>
                <div class="intro-input">
                  <textarea rows="4" cols="40" style="resize: none">
  전문회원으로 가입한 회원들을 전문가로 가입한 자이며 라우드소싱이 제공하는 서비스 내에서 디자인 및 아이디어를 제공하며 각 서비스별로 지칭하는 명칭이 다를 수 있습니다.
  전문가 회원은 디자인 카테고리와 관련된 활동을 하는 경우 ‘디자인 전문가’, 아이디어 카테고리와 관련된 </textarea
                  >
                </div>
                <h5>github 주소</h5>
                <div class="github-input">http//github.com/zino/coward</div>

                <h5>사용 기술</h5>
                <div class="skill-box">
                  <div class="my-skill">Java Script</div>
                  <div class="my-skill">CSS</div>
                  <div class="my-skill">Java</div>
                  <div class="my-skill">Spring</div>
                  <div class="my-skill">Java Script</div>
                  <div class="my-skill">CSS</div>
                </div>
              </div>

              <!--스토리 보드 알아보고 결정되면 추후 수정예정-->
              <div class="story-board-div">
                <h5 class="story-board-title">스토리 보드</h5>
                <div class="story-board"></div>
              </div>
            </div>

            <div class="button-wrapper">
              <select class="awards-status">
                <option value="1">우승</option>
                <option value="2">후보</option>
                <option value="3">탈락</option>
              </select>
              <button class="btn-32 btn-primary">확인</button>
            </div>
          </div>
        </div>
      </div>
    </main>

       <!-- 푸터 -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
  </body>
</html>
