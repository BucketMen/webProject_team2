<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header>
         <nav class="navbar navbar-expand-lg navbar-light bg-light navbar navbar-dark bg-dark" style="height: 60px;">
            <div class="container-fluid nlogo">
              <a class="navbar-brand" href="home.html" style="margin-left: 10px; font-size: x-large;"><i class="fas fa-kiwi-bird"></i> Korea's Deal</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0" style="margin: 0px 20px 0px 20px;">
                    <li class="nav-item dropdown ">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        전체글
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown"  style="width: 100px;">
                            <li><a class="dropdown-item" href="border.html">전체글</a></li>
                            <li><a class="dropdown-item" href="border.html">국내 핫딜</a></li>
                            <li><a class="dropdown-item" href="border.html">해외 핫딜</a></li>
                            <li><a class="dropdown-item" href="border.html">자유 게시판</a></li>
                            <li><a class="dropdown-item" href="border.html">질문 게시판</a></li>
                            <li><a class="dropdown-item" href="border.html">유저 갤러리</a></li>
                            <li><a class="dropdown-item" href="border.html">공지사항</a></li>
                            <li><a class="dropdown-item" href="border.html">건의 | 문의사항</a></li>
                        </ul>
                    </li> 

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        핫딜 공유 게시판
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown"  style="width: 100px;">
                        <li><a class="dropdown-item" href="border.html">국내 핫딜</a></li>
                        <li><a class="dropdown-item" href="border.html">해외 핫딜</a></li>
                    </li> 
                </ul>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="border.html" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    유저게시판
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown"  style="width: 100px;">
                        <li><a class="dropdown-item" href="gallaryBorder.html">자유 게시판</a></li>
                        <li><a class="dropdown-item" href="border.html">질문 게시판</a></li>
                        <li><a class="dropdown-item" href="gallaryBorder.html">유저 갤러리</a></li>
                    </ul> 
                </li> 

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    운영관리
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown"  style="width: 100px;">
                        <li><a class="dropdown-item" href="border.html">공지사항</a></li>
                        <li><a class="dropdown-item" href="border.html">건의 | 문의사항</a></li>
                        <li><a class="dropdown-item" href="border.html">사이트 소개</a></li>
                    </ul> 
                </li> 
				<li class="nav-item" style="display: flex;">
					<c:choose>
	                	<c:when test="${empty loginUserBean}">
	                		<a class="nav-link active" aria-current="page" href="/login">로그인</a>
                    		<span class="nav-link active" style="padding-left: 0px; padding-right: 0px;">|</span>
                    		<a class="nav-link active" aria-current="page" href="/join">회원가입</a>
                    		<span class="nav-link active" style="padding-left: 0px; padding-right: 0px;">|</span>
                    		<a class="nav-link active" aria-current="page" href="/admin_login">관리자 로그인</a>
	                	</c:when>
	                	<c:otherwise>
	                		<div>
			                    <a class="nav-link active" aria-current="page" href="MyPage.html">${loginUserBean.user_name }</a>
                   				<span class="nav-link active" style="padding-left: 0px; padding-right: 0px;">|</span>
			                    <a href="/logout" class="__links">로그아웃</a>
			                </div>
	                	</c:otherwise>
	                </c:choose>
				</li>
                   
            </ul>
                <form class="d-flex">
                  <input class="form-control me-2" type="search" placeholder="전체게시판 검색" aria-label="Search">
                  <button class="btn btn-outline-success header_submit" type="submit">Search</button>
                </form>
    
              </div>
            </div>
          </nav> 
    </header>