<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="chrome">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <script src="https://kit.fontawesome.com/c3df4d7d1c.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/css/hstyle.css"/>
    <link rel="stylesheet" href="/css/join_style.css" />
</head>
<body>
    <div id="header">
        <a href="home.html">Korea's Deal</a>
    </div>    
    <div id="container">
        <header id="mainheader">
            <nav id="join_navbar">
                <a href="/home.html" id="mainlogo">Korea's Deal</a>
            </nav>
        </div>
        </header>
        <main>
            <form action="#" method="get" style="margin-bottom: 60px;">
                <div id="join_content">
                    <div class="join_items">
                        <label class="join_label">아이디</label>
                        <span class="join_input">
                            <input type="text" id="id_text" class="join_text" name="join_id" value="${joinModel.join_id}" >
                        </span>
                        <div id="id_warning" class="join_warning">
                            <p class="warning_text">필수 정보입니다.</p>
                        </div>
                    </div>
                    <div class="join_items">
                        <label class="join_label">비밀번호</label>
                        <span class="join_input">
                            <input type="password" class="join_text" name="join_pwd" value="${joinModel.join_pwd}">
                            <span class="join_input_text"></span>
                        </span>
                        <div class="join_warning">
                            <p class="warning_text">필수 정보입니다.</p>
                        </div>
                    </div>
                    <div class="join_items">
                        <label class="join_label">비밀번호 재확인</label>
                        <span class="join_input">
                            <input type="password" class="join_text">
                            <span class="join_input_text"></span>
                        </span>
                        <div class="join_warning">
                            <p class="warning_text">필수 정보입니다.</p>
                        </div>
                    </div>
                    <div class="join_items">
                        <label class="join_label">이름</label>
                        <span class="join_input">
                            <input type="text" class="join_text" name="join_name" value="${joinModel.join_name}">
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
                                    <input type="text" class="email_te{joinModel.joixt" name="join_email1" value="$n_email1}">
                                </span>
                            </div>
                            <div class="A"><div class = "A_size">@</div></div>
                            <div>
                                <div class="email_yy">
                                    <span class="ps_box">
                                        <input type="text" id="email_last" name="join_email2" value="${joinModel.join_email2}">
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
                        <div class="join_warning">
                            <p class="warning_text">필수 정보입니다.</p>
                        </div>
                    </div>

                    <div class="join_items">
                        <label class="join_label">생년월일</label>
                        <div class="bir_warp">
                            <div class="bir_yy">
                                <span class="ps_box">
                                    <input type="text" class="join_text">
                                </span>
                            </div>
                            <div class="bir_mm">
                                <span class="ps_box">
                                    <select class="bir_select">
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
                                    <input type="text" class="join_text">
                                </span>
                            </div>
                        </div>
                        <div class="join_warning">
                            <p class="warning_text">필수 정보입니다.</p>
                        </div>
                    </div>

                    <button type="submit" class="join_button">
                        <span class="button_text">가입하기</span>
                    </button>
                </div>
            </form>
        </main>
        <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
    </div>

    <script src="js/join.js"></script>
</body>
</html>