<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="model.message.*,model.member.* ,java.util.*"%>
<jsp:useBean id="datas" class="java.util.ArrayList" scope="request" />
<!DOCTYPE HTML>
<!--
	Stellar by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>리스트</title>
<script type="text/javascript">
	function check(mnum, mid) {
		document.location.href = "control.jsp?action=edit&mnum=" + mnum
				+ "&writer=" + mid;
	} //여기 지금 문제있음
</script>
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
			<h1>게시글목록</h1>
		</header>

		<!-- Main -->
		<div id="main">

			<!-- Get Started -->
			<section id="cta" class="main special">
				<header class="major">
					<section>
						<div class="table-wrapper">
							<form action="control.jsp" method="post" name="listFrom">
								<input type="hidden" name="action" value="list">
								<table class="alt">
									<tbody>
										<tr>
											<th>글 번호</th>
											<th>제목</th>
											<th>작성자</th>
											<th>작성일</th>
										</tr>
										<%
											for (MessageVO vo : (ArrayList<MessageVO>) datas) {
												MemberVO member = (MemberVO) session.getAttribute("member");
												System.out.println("list for문 안에 memberID" + member.getMid());
										%>
										<tr>
											<td><a
												href="javascript:check(<%=vo.getMnum()%>, <%=member.getMid()%>)"><%=vo.getMnum()%></a></td>
											<td><%=vo.getTitle()%></td>
											<td><%=vo.getWriter()%></td>
											<td><%=vo.getWdate()%></td>
										</tr>
										<%
											}
										%>
									</tbody>
								</table>
							</form>

							<form action="control.jsp" method="post" name="logoutForm">
								<input type="hidden" name="action" value="logout">
								<ul class="actions special">
									<li><input type="submit" value="로그아웃"></li>
								</ul>
							</form>
							<form action="control.jsp" method="post" name="mylistForm">
								<input type="hidden" name="action" value="mylist">
								<ul class="actions special">
									<li><input type="submit" value="내가 작성한 글"></li>
								</ul>
							</form>
							<a href="form.jsp" class="button">글쓰기</a>
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