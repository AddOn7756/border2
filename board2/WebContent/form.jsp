<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.member.*"%>
<jsp:useBean id="memberVO" class="model.member.MemberVO" />
<!DOCTYPE HTML>

<html>
<head>
<title>글 작성</title>
<%
	MemberVO member = (MemberVO)session.getAttribute("member");
%>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header">
			<h1>내가 쓴 게시물</h1>
		</header>

		<!-- Main -->
		<div id="main">

			<!-- Get Started -->
			<section id="cta" class="main special">
				<header class="major">
					<section>
						<div class="table-wrapper">
							<form action="control.jsp" method="post" name="form1">
								<input type="hidden" name="action" value="insert">
								<table class="alt">
									<tbody>
										<tr>
											<td>작성자</td>
											<td><input type="text" name="writer"
												value="<%=member.getMid()%>" readonly></td>
										</tr>
										<tr>
											<td>제목</td>
											<td><input type="text" name="title"></td>
										</tr>
										<tr>
											<td>내용</td>
											<td><input type="text" name="content"></td>
										</tr>
										<tr>
											<td colspan='2'><input type="submit" value="글 작성하기"></td>
										</tr>


									</tbody>
								</table>
							</form>

						</div>
					</section>
				</header>
			</section>
		</div>
	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>