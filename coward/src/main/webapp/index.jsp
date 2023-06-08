<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!-- 
	
	* http://localhost:8000/comm
	* http://localhost:8000/comm/main 주소로 요청 위임
	-> forward이기 때문에 출력되는 주소는 http://localhost:8000/comm 유지
 -->

<jsp:forward page="home" />
