<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="chrome">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/login.css" />
</head>
<body>
    <div id="header">
            <a href="home">Korea's Deal</a>
    </div>
    <div id="container">
        <div id="login_content">
        
            <form method="post" id="loginform" action="loginCheck">
                
                <div class="id_area">
                    <div class="input_row">
                        <span class="input_box">
                            <input type="text" id="id" name="user_id" class="input_text" placeholder="아이디" value="${loginModel.login_id }">
                        </span>
                    </div>
                </div>
        
                <div class="pwd_area">
                    <div class="input_row">
                        <span class="input_box">
                            <input type="password" id="pwd" name="user_pwd" class="input_text" placeholder="비밀번호" value="${loginModel.login_pwd }">
                        </span>
                    </div>
                </div>
                
                <div id="pwd_error" class="error">비밀번호를 입력해 주세요.</div>
                <input type="submit" class="input_submit" value="로그인">
                <button type="button" onclick="location.href='join.html'" class="btn btn-secondary">회원가입</button>
               

                <div class="check_info">
                    <div class="login_check">
                        <span>
                            <input type="checkbox" id="id_check">
                            <label class="login_ch_text">로그인 상태 유지</label>
                        </span>
                        <a>IP 보안 OFF</a>
                    </div>
                </div>
            </form>


        </div>
    </div>

    <script src="/js/login.js"></script>
</body>
</html>