<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Entry article</title>
	<link href="https://fonts.googleapis.com/css2?family=Bitter:wght@400;700&display=swap" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/jsp/css/style.css" rel="stylesheet">
</head>
<body id="entryArt">

	<!--  headerの始まり  -->
	<header>
		<div class="logo">
			<a href = login.jsp>
				<img src="<%=request.getContextPath()%>/jsp/imageData/Logo2.png" alt="TinyDiary" width="200" height="100">
			</a>
		</div>
	</header>
	<!--  headerの終わり  -->

	<!-- wrapの始まり -->
	<div id="wrap" class="clearfix">
		<div class="content">
			<div class="main">
				<h1>記事登録</h1>
				<p>日記に投稿したい内容を記入し、送信するボタンで送信できます。</p>
				<h2 class="icon"><font color="black">投稿内容</font></h2>
				<section>
					<form action="/TinyBBS/EntryArticleServlet" method="post">
						<p><label>タイトル：</label><br><input type="text" name="title" size="40" maxlength="30"></p>
						<p><label>本文：</label><br><textarea name="body"
							placeholder="本文を記入してください" rows="5" cols="40"></textarea>
						</p>
						<p><input type="submit" value="送信する"></p>
						<p><a href="javascript:history.back()">1つ前に戻る</a></p>
					</form>
				</section>
			</div>
		</div>
	</div>
</body>
</html>