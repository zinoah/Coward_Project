<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<header>
  <section class="header-bar">
    <div class="logo-area">
      <a href="${contextPath}">
        <img
          src="${contextPath}/resources/assets/images/home_logo.svg"
          id="home-logo"
        />
      </a>
    </div>
    <div class="header-empty-area"></div>
    <div class="login-area">
      <c:choose>
        <c:when test="${ empty sessionScope.loginMember }">
          <a href="member/testLogin" class="login-text">로그인</a>
          <b class="login-text">|</b>
          <a href="#" class="login-text">회원가입</a>
        </c:when>
        <c:otherwise>
          <div class="login-header-logo">
            <img src="${contextPath}/resources/assets/images/bell-icon.svg" />
          </div>
          <div class="login-header-logo">
            <img src="${contextPath}/resources/assets/images/chat-icon.svg" />
          </div>
          <div class="avatar-32 login-header-logo">
            <img src="${contextPath}/${sessionScope.loginMember.profileImg}" />
          </div>
        </c:otherwise>
      </c:choose>
    </div>
  </section>
</header>
<nav>
  <section class="nav-bar">
    <div class="nav-area">
      <a href="#" class="nav-text">공모전</a>
      <a href="#" class="nav-text">개발자 찾기</a>
      <a href="#" class="nav-text">가격 안내</a>
    </div>
    <div class="nav-empty-area"></div>
    <div class="search-area">
      <form action="#" class="search-form">
        <fieldset>
          <input
            type="search"
            id="query"
            autocomplete="off"
            placeholder="어떤 공모전을 찾으시나요"
          />
          <button type="submit" id="search-btn">
            <i class="ic-search"></i>
          </button>
        </fieldset>
      </form>
    </div>
  </section>
</nav>
