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
              <a href="#">
                <img
                  src="${contextPath}/resources/assets/images/home_logo.svg"
                  alt="Coward"
                />
              </a>
            </h1>

            <button
              class="header-button sm-only"
              type="button"
              aria-label="메뉴 버튼"
            >
              <i class="ic-hamburger"></i>
            </button>
          </div>

          <div class="header-right sm-hidden">
            <div class="header-buttons">
              <button
                class="header-button md-only"
                type="button"
                aria-label="통합 검색 버튼"
              >
                <i class="ic-search"></i>
              </button>
            </div>
            <c:choose>
              <c:when test="${ empty sessionScope.loginMember }">
                <button class="header-button-text" type="button">
                  <a href="member/testLogin">로그인</a>
                </button>
                <button class="header-button-text" type="button">
                  <a href="#">회원가입</a>
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
