<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <script src="https://kit.fontawesome.com/c3df4d7d1c.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/css/hstyle.css" />
    <link rel="stylesheet" href="/css/join_style.css" />
</head>
<body>
    <div id="header">
        <a href="home.html">Korea's Deal</a>
    </div>    
    <div id="container">
        <header id="mainheader">
            <nav id="join_navbar">
                <!-- 로고(로고이미지, 홈페이지 이름) -->
                <!-- 메뉴(자기소개, 게시글) -->
                <!-- 링크(로그인, 회원가입) -->
                <a href="/home.html" id="mainlogo">Korea's Deal</a>
            </nav>
        </div>
        </header>
        <main>
            <form id="joinform" action="/joinInput" method="post" style="margin-bottom: 60px;">
                <div id="join_content">
                    <div class="join_items">
                        <label class="join_label">아이디</label>
                        <span class="join_input">
                        	<input type="hidden" id ="idstatus" name="idstatus" value = "${empty joinflag ? false : joinflag}">
                            <input type="text" id="id_text" class="join_text" name="join_id" value="${empty join_id ? "": join_id}">
                        </span>           
                        <div id="id_warning" class="join_warning">
                            <p class="warning_text">필수 정보입니다.</p>
                        </div>
                    </div>
                    <div class="join_items">
                        <label class="join_label">비밀번호</label>
                        <span class="join_input">
                            <input type="password" class="join_text" id="pwd_check" name="join_pwd">
                            <span class="join_input_text"></span>
                        </span>
                        <div class="join_warning">
                            <p class="warning_text">필수 정보입니다.</p>
                        </div>
                    </div>
                    <div class="join_items">
                        <label class="join_label">비밀번호 재확인</label>
                        <span class="join_input">
                            <input type="password" class="join_text" id="pwd_check2" name="join_repwd">
                            <span class="join_input_text"></span>
                        </span>
                        <div class="join_warning">
                            <p class="warning_text">필수 정보입니다.</p>
                        </div>
                        <div class="pwd_warning">
                            <p class="pwd_warning_text">비밀번호가 일치하지 않습니다</p>
                        </div>
                    </div>
                    <div class="join_items">
                        <label class="join_label">이름</label>
                        <span class="join_input">
                            <input type="text" class="join_text" name="join_name">
                            <span class="join_input_text"></span>
                        </span>
                        <div class="join_warning">
                            <p class="warning_text">필수 정보입니다.</p>
                        </div>
                    </div>
                    
                    <div class="join_items">
                        <label class="join_label">이메일</label>
                        <div class="bir_warp">
                            <div class="email_xx">
                                <span class="ps_box">
                                    <input type="text" class="email_text" name="join_email1">
                                </span>
                            </div>
                            <div class="A"><div class = "A_size">@</div></div>
                            <div>
                                <div class="email_yy">
                                    <span class="ps_box">
                                        <input type="text" id="email_last" name="join_email2">
                                    </span>
                                </div>
                            </div>    
                            <div class="email_zz">
                                <span class="ps_box">
                                    <select class="email_select"> 
                                        <option value="self">직접입력</option>
                                        <option value="naver">naver.com</option>
                                        <option value="kakao">kakao.com</option>
                                        <option value="daum">daum.net</option>
                                        <option value="google">google.com</option>
                                    </select>
                                </span>
                            </div>
                        </div>
                        <div class="email_warning">
                            <p class="warning_text">필수 정보입니다.</p>
                        </div>
                    </div>

                    <div class="join_items">
                        <label class="join_label">생년월일</label>
                        <div class="bir_warp">
                            <div class="bir_yy">
                                <span class="ps_box">
                                    <input type="text" class="join_text" name="birth_year">
                                </span>
                            </div>
                            <div class="bir_mm">
                                <span class="ps_box">
                                    <select class="bir_select" name="birth_month">
                                        <option value="0">월</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                    </select>
                                </span>
                            </div>
                            <div class="bir_dd">
                                <span class="ps_box">
                                    <input type="text" class="join_text" name="birth_day">
                                </span>
                            </div>
                        </div>
                        <div class="join_warning">
                            <p class="warning_text">필수 정보입니다.</p>
                        </div>
                    </div>
					<input type="hidden" id="submitflag" name="submit_flag" value="false">
                    <button type="submit" class="join_button">
                        <span class="button_text">가입하기</span>
                    </button>
                </div>
            </form>
        </main>
        <footer>
            <div id="foot">
                <!-- 이름, 연락처, 주소, 이메일 -->
                <ul>
                    <li>프로젝트 5조</li>
                    <li>팀원: 이진웅 정규석 전우강</li>
                    <li>주소: 대한민국 부산시</li>
                    <li>이메일: contect-us@kakao.com</li>
                </ul>
            </div>
        </footer>
    </div>

    <script src="/js/join.js"></script>
    
</body>
</html>