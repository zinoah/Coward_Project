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
      href="${contextPath}/resources/styles/css/contest-management.css"
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
            <select class="status">
              <option value="1">심사중</option>
              <option value="2" selected>모집중</option>
            </select>
          </div>

          <div class="col-sm-2">
            <h6>남은기간 &nbsp; 참가인원 &nbsp; 우승인원</h6>
            <pre>17일   15명   1/2</pre>
          </div>

          <div class="col-sm-1 sm-only">
            <select class="status">
              <option value="1">심사중</option>
              <option value="2" selected>모집중</option>
            </select>
          </div>
          <div class="col-sm-1 sm only">
            <select class="status" id="awards-status">
              <option value="1">우승</option>
              <option value="2" selected>후보</option>
              <option value="1">탈락</option>
            </select>
          </div>
        </div>
      </div>
    </main>

    <!-- 결과(후보/ 우승) 구별해서 보여주는 기능 필요여부???-->
    <main class="contest">
      <div class="container">
        <div class="row">
          <div class="col-sm-4 col-md-6 col-lg-4" id="all-col">
            <div class="card">
              <div class="profile-section">
                <img
                  src="${contextPath}/resources/assets/images/default-user-img.png"
                  name="profile-image"
                />
                <div class="profile-div">
                  <div class="profile-name-div">
                    <h4 class="profile-name">닉네임</h4>
                    <div class="coding-type">back</div>
                    <form>
                      <select>
                        <option value="1">우승</option>
                        <option value="2" selected>후보</option>
                        <option value="3">탈락</option>
                      </select>
                    </form>
                  </div>
                  <div class="one-line-intro">백엔드 개발자 빡과장 입니다.</div>
                </div>
              </div>

              <div class="profile-button-wrapper">
                <button class="btn-40 btn-outlined">제출품 보기</button>
                <button class="btn-40 btn-primary">채팅하기</button>
              </div>
            </div>
          </div>

          <div class="col-sm-4 col-md-6 col-lg-4" id="all-col">
            <div class="card">
              <div class="profile-section">
                <img
                  src="${contextPath}/resources/assets/images/default-user-img.png"
                  name="profile-image"
                />
                <div class="profile-div">
                  <div class="profile-name-div">
                    <h4 class="profile-name">닉네임</h4>
                    <div class="coding-type">back</div>
                    <form>
                      <select>
                        <option value="1">우승</option>
                        <option value="2" selected>후보</option>
                        <option value="3">탈락</option>
                      </select>
                    </form>
                  </div>
                  <div class="one-line-intro">백엔드 개발자 빡과장 입니다.</div>
                </div>
              </div>

              <div class="profile-button-wrapper">
                <button class="btn-40 btn-outlined">제출품 보기</button>
                <button class="btn-40 btn-primary">채팅하기</button>
              </div>
            </div>
          </div>

          <div class="col-sm-4 col-md-6 col-lg-4" id="all-col">
            <div class="card">
              <div class="profile-section">
                <img
                  src="${contextPath}/resources/assets/default-user-img.png"
                  name="profile-image"
                />
                <div class="profile-div">
                  <div class="profile-name-div">
                    <h4 class="profile-name">닉네임</h4>
                    <div class="coding-type">back</div>
                    <form>
                      <select>
                        <option value="1">우승</option>
                        <option value="2" selected>후보</option>
                        <option value="3">탈락</option>
                      </select>
                    </form>
                  </div>
                  <div class="one-line-intro">백엔드 개발자 빡과장 입니다.</div>
                </div>
              </div>

              <div class="profile-button-wrapper">
                <button class="btn-40 btn-outlined">제출품 보기</button>
                <button class="btn-40 btn-primary">채팅하기</button>
              </div>
            </div>
          </div>

          <div class="col-sm-4 col-md-6 col-lg-4" id="all-col">
            <div class="card">
              <div class="profile-section">
                <img
                  src="${contextPath}/resources/assets/default-user-img.png"
                  name="profile-image"
                />
                <div class="profile-div">
                  <div class="profile-name-div">
                    <h4 class="profile-name">닉네임</h4>
                    <div class="coding-type">back</div>
                    <form>
                      <select>
                        <option value="1">우승</option>
                        <option value="2" selected>후보</option>
                        <option value="3">탈락</option>
                      </select>
                    </form>
                  </div>
                  <div class="one-line-intro">백엔드 개발자 빡과장 입니다.</div>
                </div>
              </div>

              <div class="profile-button-wrapper">
                <button class="btn-40 btn-outlined">제출품 보기</button>
                <button class="btn-40 btn-primary">채팅하기</button>
              </div>
            </div>
          </div>

          <div class="col-sm-4 col-md-6 col-lg-4" id="all-col">
            <div class="card">
              <div class="profile-section">
                <img
                  src="${contextPath}/resources/assets/images/default-user-img.png"
                  name="profile-image"
                />
                <div class="profile-div">
                  <div class="profile-name-div">
                    <h4 class="profile-name">닉네임</h4>
                    <div class="coding-type">back</div>
                    <form>
                      <select>
                        <option value="1">우승</option>
                        <option value="2" selected>후보</option>
                        <option value="3">탈락</option>
                      </select>
                    </form>
                  </div>
                  <div class="one-line-intro">백엔드 개발자 빡과장 입니다.</div>
                </div>
              </div>

              <div class="profile-button-wrapper">
                <button class="btn-40 btn-outlined">제출품 보기</button>
                <button class="btn-40 btn-primary">채팅하기</button>
              </div>
            </div>
          </div>

          <div class="col-sm-4 col-md-6 col-lg-4" id="all-col">
            <div class="card">
              <div class="profile-section">
                <img
                  src="${contextPath}/resources/assets/images/default-user-img.png"
                  name="profile-image"
                />
                <div class="profile-div">
                  <div class="profile-name-div">
                    <h4 class="profile-name">닉네임</h4>
                    <div class="coding-type">back</div>
                    <form>
                      <select>
                        <option value="1">우승</option>
                        <option value="2" selected>후보</option>
                        <option value="3">탈락</option>
                      </select>
                    </form>
                  </div>
                  <div class="one-line-intro">백엔드 개발자 빡과장 입니다.</div>
                </div>
              </div>

              <div class="profile-button-wrapper">
                <button class="btn-40 btn-outlined">제출품 보기</button>
                <button class="btn-40 btn-primary">채팅하기</button>
              </div>
            </div>
          </div>

          <div class="col-sm-4 col-md-6 col-lg-4" id="all-col">
            <div class="card">
              <div class="profile-section">
                <img
                  src="${contextPath}/resources/assets/images/default-user-img.png"
                  name="profile-image"
                />
                <div class="profile-div">
                  <div class="profile-name-div">
                    <h4 class="profile-name">닉네임</h4>
                    <div class="coding-type">back</div>
                    <form>
                      <select>
                        <option value="1">우승</option>
                        <option value="2" selected>후보</option>
                        <option value="3">탈락</option>
                      </select>
                    </form>
                  </div>
                  <div class="one-line-intro">백엔드 개발자 빡과장 입니다.</div>
                </div>
              </div>

              <div class="profile-button-wrapper">
                <button class="btn-40 btn-outlined">제출품 보기</button>
                <button class="btn-40 btn-primary">채팅하기</button>
              </div>
            </div>
          </div>

          <div class="col-sm-4 col-md-6 col-lg-4" id="all-col">
            <div class="card">
              <div class="profile-section">
                <img
                  src="${contextPath}/resources/assets/images/default-user-img.png"
                  name="profile-image"
                />
                <div class="profile-div">
                  <div class="profile-name-div">
                    <h4 class="profile-name">닉네임</h4>
                    <div class="coding-type">back</div>
                    <form>
                      <select>
                        <option value="1">우승</option>
                        <option value="2" selected>후보</option>
                        <option value="3">탈락</option>
                      </select>
                    </form>
                  </div>
                  <div class="one-line-intro">백엔드 개발자 빡과장 입니다.</div>
                </div>
              </div>

              <div class="profile-button-wrapper">
                <button class="btn-40 btn-outlined">제출품 보기</button>
                <button class="btn-40 btn-primary">채팅하기</button>
              </div>
            </div>
          </div>

          <div class="col-sm-4">
            <div class="contest-button-wrapper">
              <button class="btn-secondary">임시저장</button>
              <button class="btn-secondary">심사완료</button>
            </div>
          </div>
        </div>
      </div>
    </main>

       <!-- 푸터 -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
  </body>
</html>
