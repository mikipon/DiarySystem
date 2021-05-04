<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@ page import ="beans.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
<link href="https://fonts.googleapis.com/css2?family=Bitter:wght@400;700&display=swap" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

<script type="text/javascript">
function check() {
	if(loginForm.id.value.length == 0){
		window.alert("ユーザ名が未入力です");
	}else if(loginForm.password.value.length == 0){
		window.alert("パスワードが未入力です");
	}else{
		loginForm.submit();
	}
}
</script>

</head>
<body id="index">

	<!--  headerの始まり  -->
	<header>
		<div class="logo">
			<img src="imageData/Logo2.png" alt="TinyDiary" width="200" height="100">
		</div>
	</header>
	<!--  headerの終わり  -->

	<!-- wrapの始まり -->
	<div id="wrap">
		<div class="content">
			<h1>Life is beautiful,<br>Write!Write!</h1>
			<p>どんどん日記を投稿して、思い出を残していこう。まずはログインだ。<br>CSS頑張ったような気がするので得点UPをお願いします！</p>
			<h2>Tiny BBS ログインページ</h2>
			<form action="/TinyBBS/LoginServlet" method="post" name="loginForm" onSubmit="return check();">
				<p>
					<label>ログインID：<input type="text" placeholder="ログインID" name="id" size="40" maxlength="20"></label>
				</p>
				<p>
					<label>パスワード：<input type="password" placeholder="パスワード" name="password" size="40" maxlength="20"></label>
				</p>
				<div style="display:inline-flex">
					<input type="submit" onClick="check(); return false;" value="ログイン">
					<div style="margin-left: 20px; margin-top: 10px;">
						<p class="btn"><a href=entryUser.jsp>ユーザ登録</a></p>
					</div>
				</div>
			</form>

		</div>
	</div>
	<!-- wrapの終わり -->

<!--
<ul class="input_login">
	<h2>Tiny BBS ログインページ</h2>
		<form action="/TinyBBS/LoginServlet" method="post">
			<p><label>ログインID：<input type="text" name="id" size="40" maxlength="20"></label></p>
			<p><label>パスワード：<input type="password" name="password" size="40" maxlength="20"></label></p>
			<p class="btn"><input type="submit" value="ログイン"></p>
		</form>
		<a href=entryUser.jsp>ユーザ登録</a>
		<br>
</ul> -->

	<!-- footer始まり -->
	<footer>
		<small>(C)2021 Miki-studio.</small>
	</footer>
	<!-- footer終わり -->

</body>
</html>