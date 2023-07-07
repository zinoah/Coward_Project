<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<!-- is-active -->
<aside id="menubar" class="menubar lg-hidden">
  <header class="menubar-header">
    <h1 class="logo">
      <a href="#">
        <img
          src="${contextPath}/resources/assets/images/home_logo.svg"
          alt="Coward"
        />
      </a>
    </h1>

    <c:choose>
      <c:when test="${ empty sessionScope.loginMember }">
        <!-- Note: 로그인을 하지 않은 경우 -->
        <div class="menubar-auth">
          <a class="btn-secondary btn-32" href="login">로그인</a>
          <a class="btn-primary btn-32" href="member/join">회원가입</a>
        </div>
      </c:when>

      <c:otherwise>
        <!-- Note: 로그인을 한 경우 -->
        <a class="member-info" href="#">
          <div class="avatar-32">
            <img
              src="${contextPath}/resources/assets/images/default-user-img.png"
            />
          </div>
          <strong class="username">빡과장</strong>
        </a>
      </c:otherwise>
    </c:choose>

    <nav class="menubar-nav">
      <h2 class="visually-hidden">메뉴</h2>

      <ul class="menubar-list">
        <li class="menubar-item">
          <a href="${contextPath}/contest/main">공모전</a>
        </li>
        <li class="menubar-item">
          <a href="${contextPath}/member/findDev">개발자 찾기</a>
        </li>
        <li class="menubar-item"><a href="#">가격 안내</a></li>
        <li class="menubar-item">
          <a href="${contextPath}/event/main">이벤트</a>
        </li>
      </ul>
    </nav>
  </header>

  <footer class="menubar-footer">
    <a href="#">
      <div class="logout-icon">
        <img src="${contextPath}/resources/assets/images/logout.svg" />
      </div>
    </a>
  </footer>
</aside>
