<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<header class="header">
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <div class="header-wrapper">
          <div class="header-left">
            <h1 class="logo">
              <a href="${contextPath}">
                <img
                  src="${contextPath}/resources/assets/images/home_logo.svg"
                  alt="Coward로고"
                />
              </a>
            </h1>
            <h1 class="service-center-text-logo">고객샌터</h1>
          </div>
          <div class="header-right">
            <c:choose>
              <c:when test="${empty sessionScope.loginMember}">
                <button class="login-button">
                  <a href="member/testLogin">로그인</a>
                </button>
              </c:when>
              <c:otherwise>
                <div class="header-user-image">
                  <img
                    src="${contextPath}/resources/assets/images/bell-icon.svg"
                    alt=""
                  />
                </div>
                <div class="header-user-image">
                  <img
                    src="${contextPath}/resources/assets/images/chat-icon.svg"
                    alt=""
                  />
                </div>
                <div class="avatar-32 header-user-image">
                  <c:choose>
                    <c:when test="${empty loginMember.profileImg }">
                      <img
                        src="${contextPath}/resources/assets/images/default-user-img.png"
                        alt="변경 프로필 사진"
                        id="profile-image"
                      />
                    </c:when>
                    <c:otherwise>
                      <img
                        src="${contextPath}/${loginMember.profileImg}"
                        alt="변경 프로필 사진"
                        id="profile-image"
                      />
                    </c:otherwise>
                  </c:choose>
                </div>
              </c:otherwise>
            </c:choose>
          </div>
        </div>
      </div>
    </div>
  </div>
</header>
