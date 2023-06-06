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
            <!-- Note: 로그인을 하지 않은 경우 -->
            <div class="header-buttons">
              <button
                class="header-button md-only"
                type="button"
                aria-label="통합 검색 버튼"
              >
                <i class="ic-search"></i>
              </button>
              <button class="header-button-text" type="button">
                <a href="#">로그인</a>
              </button>
              <button class="header-button-text" type="button">
                <a href="#">회원가입</a>
              </button>
            </div>
            <!-- Note: 로그인을 한 경우 -->
          </div>
        </div>
      </div>
    </div>
  </div>
</header>
