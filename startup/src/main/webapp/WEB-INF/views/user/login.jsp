<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link rel="stylesheet" href="/resources/css/main.css" />
<style>
.login-main {
	min-width: 1050px;
	margin-top: 90px;
	margin-bottom: 60px;
	background-color: rgb(255, 255, 255);
}

.login-logo {
	font-weight: 800;
	font-size: 20px;
	line-height: 20px;
	text-align: center;
}

.middle-login {
	width: 340px;
	margin: 0px auto;
	letter-spacing: -0.6px;
}

.login-inp {
	margin-top: 30px;
	box-sizing: border-box;
}

.login-id-info {
	box-sizing: border-box;
	margin-bottom: 10px;
}

.user-id-inp {
	height: 54px;
	width: 100%;
	box-sizing: border-box;
	font-size: 14px;
	padding: 0px 11px 1px 15px;
	border-radius: 4px;
	border: 1px solid rgb(221, 221, 221);
	border-radius: 4px;
	outline: none;
}

.user-id-inp:focus-visible {
	border: 1px solid rgb(51, 51, 51);
	background: none;
}

a {
	text-decoration: none;
}

.find-txt {
	color: rgb(51, 51, 51);
	cursor: pointer;
	font-size: 14px;
}

.find-login {
	margin-top: 15px;
	display: flex;
	justify-content: flex-end;
}

.find-bar {
	width: 1px;
	height: 10px;
	margin: 3px 6px 0px;
	background-color: rgb(51, 51, 51);
}

.fin-login-btn {
	width: 100%;
	height: 54px;
	border-radius: 3px;
	color: rgb(255, 255, 255);
	background-color: rgb(95, 0, 128);
	border: 0px none;
	cursor: pointer;
}

.fin-login {
	margin-top: 20px;
}

.retry-join-btn {
	margin-top: 10px;
	width: 100%;
	height: 54px;
	border-radius: 3px;
	color: rgb(95, 0, 128);
	background-color: rgb(255, 255, 255);
	border: 1px solid rgb(95, 0, 128);
	cursor: pointer;
	position: relative;
}

.a-join-btn {
	position: absolute;
	width: 100%;
	height: 100%;
}
</style>
</head>
<body>

	<jsp:include page="../header.jsp"></jsp:include>

	<div class="login-main">
		<div class="login-logo">로그인</div>
		<form action="/user/login" method="post">
			<div class="middle-login">
				<div class="login-inp">
					<div class="login-id-info">
						<input type="text" placeholder="아이디를 입력해주세요" class="user-id-inp"
							name="userid">
					</div>
				</div>
				<div class="login-pw-inp">
					<input type="password" placeholder="비밀번호를 입력해주세요" name="userpw"
						class="user-id-inp">
				</div>
				<div class="find-login">
					<a href="#" class="find-txt">아이디 찾기</a> <span class="find-bar"></span>

					<a href="#" class="find-txt">비밀번호 찾기</a>
				</div>
				<div class="fin-login">
					<button type="submit" class="fin-login-btn">
						<span style="font-size: 18px;">로그인</span>
					</button>
					<button type="button" class="retry-join-btn">
						<!-- 이거 처리해주어야 한다. -->
						<a href="/user/join" class="a-join-btn"></a><span
							style="font-size: 18px;">회원가입</span>
					</button>
				</div>
			</div>
		</form>
	</div>

</body>
</html>