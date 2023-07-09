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
      href="${contextPath}/resources/styles/css/chat.css"
    />

    <title>Coward | 회원들과 채팅을 나눠보세요</title>
  </head>
  <body>
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
    <jsp:include page="/WEB-INF/views/common/nav.jsp" />

    <main class="chat">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <div class="chat-wrapper">
              <div class="chat-room-list-area">
                <div class="chat-room-list-area-title">
                  <h3>채팅 목록</h3>
                </div>
                <div class="chat-room-list-area-list">
                  <div class="chat-room-list-area-list-inner">
                    <div class="chat-user">
                      <div class="avatar-32 chat-user-profile">
                        <img
                          src="${contextPath}/resources/assets/images/dummy/profile-img/20230630195140_64483.png"
                          alt=""
                        />
                      </div>
                      <div class="chat-user-nick">
                        <span>스펀지밥</span>
                      </div>
                    </div>
                    
                    
                  </div>
                </div>
              </div>
              <div class="chat-message-area">
                <div class="chat-message-area-board">
                  <img
                    src="${contextPath}/resources/assets/images/chat-room-logo.svg"
                  />
                  <div class="chat-message-area-board-change">
                    <div class="message-box-area">
                      <div class="message-box">
                        <div class="avatar-32 message-box-profile">
                          <img
                            src="${contextPath}/resources/assets/images/dummy/profile-img/20230630195140_64483.png"
                            alt=""
                          />
                        </div>
                        <div class="message">
                          <span>안녕</span>

                        </div>
                      </div>
                    </div>
                    <div class="message-input-box-area">
                      <textarea rows="3"> </textarea>
                      <button class="btn-secondary"><span> send </span></button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>

    <!-- 푸터 -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
    <script src="${contextPath}/resources/js/chat.js"></script>
  </body>
</html>
