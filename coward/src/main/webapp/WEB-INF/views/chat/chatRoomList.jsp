<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <link rel="stylesheet" href="${contextPath}/resources/styles/css/chat.css"/>

    <title>Coward | 채팅방 목록</title>
  </head>
  <body>
   <jsp:include page="/WEB-INF/views/common/header.jsp" />
    <jsp:include page="/WEB-INF/views/common/nav.jsp" />
    
<main class="chat-list">
    <div class="container">
      <div class="row">
        <div class="col-sm-4">
          <div class="chat-wrapper ">
            
              <div class="full-chat">
							<div class="chat-box-group">
            <div class="ad sm-only"></div>
              <h4 class="list">채팅방 목록</h4>
            			<c:choose>
							<%-- 조회된 채팅방 목록이 없을 때 --%>
							<c:when test="${empty chatRoomList }">
							<p>채팅 없으<p>
							</c:when>
							
							<%-- 조회된 채팅방 목록이 있을 때 --%>
							<c:otherwise>
								
							<c:forEach var="chatRoom" items="${chatRoomList}">
				                <div class="chat-box" onclick="location.href='${contextPath}/chat/room/${chatRoom.chatRoomNo}'">
				                  <div class="profile-box">
				                    <div class="profile-img avatar">
				                      <img  src="${contextPath}/${chatRoom.profileImg}" alt="" />
				                    </div>
				                  </div>
				                  <p class="chat-message">${chatRoom.memberNick}</p>
				
				                  <p class="chat-date">${chatRoom.crProduce}</p>
				                </div>
				                </c:forEach>
				                </c:otherwise>
						</c:choose>  
				                </div>
				                <div class="col-sm-3">
				                <jsp:include page="/WEB-INF/views/chat/chatMessage.jsp" /> 
              </div>
						</div> 
						</div>            
              </div>
              
              </div>
              </div>
             </main>
      <!-- 푸터 -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp" /> 
   
     
  </body>
   <script src="${contextPath}/resources/js/chattingRoom.js"></script>
</html>
