<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
      <div class="row">
        <div class="col-sm-4">
          <div class="join-wrapper">
            <img
              src="../assets/images/login-bg.svg"
              class="login-bg-img lg-only"
            />
            <div class="join-first-box">
              <div class="logo-p-box">
                <a href="#">
                  <img src="../assets/images/home_logo.svg" class="logo-img" />
                </a>
                <p class="p-first">Coward에 오신 것을 환영합니다!</p>
              </div>
              <button
                class="join-email"
                onclick="location.href='join-second.html'"
              >
                이메일로 가입하기
              </button>
              <div class="line-box">
                <hr class="line1" />
                <hr class="line2" />
                <p class="p-or">또는</p>
                <img
                  src="../assets/images/goolge-logo.png"
                  class="google-logo"
                />
                <img src="../assets/images/kakao-logo.png" class="kakao-logo" />
                <div class="join-google-box">
                  <button class="join-google">Google로 간편가입</button>
                </div>
                <div class="join-kakao-box">
                  <button class="join-kakao">Kakao로 간편가입</button>
                </div>
                <span>이미 계정이 있으신가요?</span>
                <a href="../pages/login.html" class="login">로그인 하기</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>