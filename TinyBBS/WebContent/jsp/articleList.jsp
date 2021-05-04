<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@ page import ="beans.Article" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Article list page</title>
	<link href="https://fonts.googleapis.com/css2?family=Bitter:wght@400;700&display=swap" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/jsp/css/style.css" rel="stylesheet">

	<script type="text/javascript">
	function check() {
		if(loginForm.user_id.value.length == 0){
			window.alert("IDが未入力です");
		}else{
			loginForm.submit();
		}
	}
	</script>

</head>
<body id = list>

	<!--  headerの始まり  -->
	<header>
		<div class="logo">
			<a href = jsp/login.jsp>
				<img src="<%=request.getContextPath()%>/jsp/imageData/Logo2.png" alt="TinyDiary" width="200" height="100">
			</a>
		</div>
	</header>
	<!--  headerの終わり  -->

	<!-- wrapの始まり -->
	<div id="wrap">
		<div class="content">
			<div class="main-center">
				<h1>日記一覧</h1>
				<p>TinyDiaryに投稿された日記を見ることができるページです。</p>

				<div class="diary-txt"></div>
				<a href = jsp/entryArticle.jsp>新規日記登録</a><br><br>

				<h2 class="icon"><font color="black">ID検索</font></h2>
				<form action="/TinyBBS/ArticleListByEditorIdServlet" name="loginForm" method="post">
					<p><input class="form-control" type="text" placeholder="IDを検索" name="user_id" size="40" maxlength="30"></p>
					<p><input type="submit" onClick="check(); return false;" value="検索する"></p>
					<p><a href="javascript:history.back()">1つ前に戻る</a></p>
				</form>

				<section class="diary">
					<h2 class="icon"><font color="black">Everyone's Diary List</font></h2>

					<%
						List<Article> aList = (List<Article>)( request.getAttribute("articleList") );
					%>
					<%
						for(Article a : aList){
					%>
						<!-- <label><%out.append( String.valueOf(a.getId() ) ); %></label> <br> -->

						<table>
							<tr>
								<th>タイトル</th>
								<td><%out.append( a.getTitle() ); %></td>
							</tr>
							<tr>
								<th>本文</th>
								<td><%out.append( a.getBody() ); %></td>
							</tr>
							<tr>
								<th>登録者</th>
								<td><%out.append( a.getEditorId() ); %></td>
							</tr>
							<%SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");%>
							<tr>
								<th>登録日時</th>
								<td><%out.append( sdf.format( a.getEntryDatetime() ) ); %></td>
							</tr>
						</table>
						<br>

					<%} %>

				</section>
			</div>
		</div>
	</div>

	<!-- footer始まり -->
	<footer>
		<small>(C)2021 Miki-studio.</small>
	</footer>
	<!-- footer終わり -->

</body>
</html>