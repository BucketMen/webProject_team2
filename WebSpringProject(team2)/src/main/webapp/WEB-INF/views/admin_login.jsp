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
        
            <form method="post" id="adminloginform" action="adminloginCheck">
                
                <div class="id_area">
                    <div class="input_row">
                        <span class="input_box">
                            <input type="text" id="id" name="admin_user_id" class="input_text" placeholder="관리자 아이디" value="${adminloginModel.login_id }">
                        </span>
                    </div>
                </div>
                <div id="id_error" class="error">관리자 아이디를 입력해 주세요</div>
        
                <div class="pwd_area">
                    <div class="input_row">
                        <span class="input_box">
                            <input type="password" id="pwd" name="admin_user_pwd" class="input_text" placeholder="관리자 비밀번호" value="${adminloginModel.login_pwd }">
                        </span>
                    </div>
                </div>
                <div id="pwd_error" class="error">관리자 비밀번호를 입력해 주세요.</div>
                					<input type="hidden" id="submitflag" name="submit_flag" value="false">
                <input type="submit" class="input_submit" value="로그인"><!-- js호출 -->

                <div class="check_info">
                    <div class="login_check">
                        <a>IP 보안 OFF</a>
                    </div>
                </div>
            </form>


        </div>
    </div>

    <script src="/js/admin_login.js"></script>
</body>
</html>