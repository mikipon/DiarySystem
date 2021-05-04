<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Entry page</title>
	<link href="https://fonts.googleapis.com/css2?family=Bitter:wght@400;700&display=swap" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/jsp/css/style.css" rel="stylesheet">

	<script type="text/javascript">
	function check() {
		if(loginForm.id.value.length == 0){
			window.alert("ログインIDが未入力です");
		}else if(loginForm.name.value.length == 0){
			window.alert("名前が未入力です");
		}else if(loginForm.password1.value.length == 0){
			window.alert("パスワードが未入力です");
		}else if(loginForm.password2.value.length == 0){
			window.alert("確認用パスワードを入力してください");
		}else{
			loginForm.submit();
		}
	}
	</script>

</head>
<body id="entryUser">

	<!--  headerの始まり  -->
	<div class="logo">
		<img src="<%=request.getContextPath()%>/jsp/imageData/Logo2.png" alt="TinyDiary" width="200" height="100">
	</div>
	<!--  headerの終わり  -->

	<!-- wrapの始まり -->
	<div id="wrap" class="clearfix">
		<div class="content">
			<div class="main">
				<h1>Tiny BBS ユーザ登録</h1>
				<p><font color="black">ユーザの登録を行う画面です。記入しユーザ登録を行ってください。</font></p>
				<h2 class="icon"><font color="black">ユーザ登録</font></h2>
				<section>
					<form action="/TinyBBS/EntryUserServlet" name="loginForm" method="post">
						<p><label><font color="black">ログインID：<input type="text" name="id" size="40" maxlength="20"></font></label></p>
						<p><label><font color="black">名前：<input type="text" name="name" size="40" maxlength="20"></font></label></p>
						<p><label><font color="black">パスワード：<input type="password" name="password1" size="40" maxlength="20"></font></label></p>
						<p><label><font color="black">確認用パスワード：<input type="password" name="password2" size="40" maxlength="20"></font></label></p>
						<p><input type="submit" onClick="check(); return false;" value="登録"></p>
						<p><a href="javascript:history.back()">1つ前に戻る</a></p>
					</form>
				</section>
			</div>
		</div>
	</div>
</body>
</html>