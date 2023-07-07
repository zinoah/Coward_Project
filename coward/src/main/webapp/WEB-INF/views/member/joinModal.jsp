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
      href="${contextPath}/resources/styles/css/join-modal.css"
    />
    <title>Coward | 회원가입 - 타입선택 및 약관동의</title>
  </head>
  <body>
    <!-- 회원가입 축하 모달 -->
    <div class="join-all-wrapper">
      <div class="join-box">
        <img
          src="${contextPath}/resources/assets/images/check-circle.svg"
          class="check"
        />
        <br /><br />
        <pre class="pre-first">가입을 완료했어요 👏</pre>
        <a href="${contextPath}/member/login"
          ><div class="add-information-btn">추가 정보 입력하기</div></a
        >

        <br /><br />

        <a href="${contextPath}/common/home"
          ><div class="reject">아니요. 다음에 입력할게요!</div></a
        >
      </div>
    </div>

    <div class="reject"></div>

    <!-- jQuery 라이브러리 추가(CDN) -->
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>
  </body>
</html>
