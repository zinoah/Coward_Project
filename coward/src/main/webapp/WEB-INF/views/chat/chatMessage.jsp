<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <link rel="stylesheet" href="${contextPath}/resources/styles/css/chat-room.css"/>

    <title>Coward | 채팅방 목록</title>
  </head>

  
  <body>
  <div class="sm-only">
  <jsp:include page="/WEB-INF/views/common/header.jsp" />
  </div>
    
    

    <div class="container">
      <div class="row">
        <div class="col-sm-4">
        <div class="room-wrapper col-sm-4">
        <div class="room-header">
        <h4 class="personNick">Coward</h4>
        </div>
        	<ul class="display-chatting">
		
				<c:forEach items="${list}" var="msg">
					<fmt:formatDate var="chatDate" value="${msg.createDate }" pattern="yyyy년 MM월 dd일 HH:mm:ss"/>
					<c:if test="${msg.memberNo == loginMember.memberNo }">
						<li class="myChat">
							<span class="chatDate">${chatDate}</span>
							<p class="chat">${msg.message }</p>
						</li>
					</c:if>
					
					<c:if test="${msg.memberNo != loginMember.memberNo }">
						<li>
							<b>${msg.memberNick}</b>	<br>
							<span class="chatDate">${chatDate}</span>
							<p class="chat">${msg.message }</p>
						</li>
					</c:if>
				
				</c:forEach>
			</ul>	
        
        <div class="input-area col-sm-3">
				<textarea id="inputChatting" rows="1" class="col-sm-3"></textarea>
				<button id="send">보내기</button>
			</div>
		</div>
        
        
        </div>
        
       
        </div> 
      </div>
    
  </body>
   <!--------------------------------------- sockjs를 이용한 WebSocket 구현을 위해 라이브러리 추가 ---------------------------------------------->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	
	<!-- https://github.com/sockjs/sockjs-client -->
	<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
	<script>
		
		const memberNo = "${loginMember.memberNo}";
		const chatRoomNo = "${chatRoomNo}";
		const contextPath = "${contextPath}";

		// 로그인이 되어 있을 경우에만
		// /chat 이라는 요청 주소로 통신할 수 있는  WebSocket 객체 생성
		let chattingSock = new SockJS(contextPath+"/chat");
			// -> websocket 프로토콜을 이용해서 해당 주소로 데이터를 송/수신 할 수 있다.


		/*  WebSocket
		
		- 브라우저와 웹 서버간의 전이중 통신을 지원하는 프로토콜

		* 전이중 통신(Full Duplex) : 두대의 단말기가 데이터를 동시에 송/수신 하기 위해
		  각각 독립된 회선을 사용하는 통신 방식(ex. 전화 )

		- HTML5 부터 지원
		- Java 7 부터 지원 (8 버전 이상 사용 권장)
		- Spring Framework 4 이상 부터 지원
		*/


	</script>     
  <script src="${contextPath}/resources/js/chattingRoom.js"></script>
</html>
