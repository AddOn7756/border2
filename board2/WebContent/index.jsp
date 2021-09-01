<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.member.*" errorPage="error.jsp"%>
<jsp:useBean id="memberDAO" class="model.member.MemberDAO" />
<jsp:useBean id="memberVO" class="model.member.MemberVO" />
<jsp:setProperty property="*" name="memberVO"/>
<!DOCTYPE HTML>
<!--
	Stellar by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>로그인</title>
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
		<header id="header" class="alt">
			<span class="logo"><img src="images/logo.svg" alt="" /></span>
			<h1>Stellar</h1>
			<p>
				Just another free, fully responsive site template<br /> built by <a
					href="https://twitter.com/ajlkn">@ajlkn</a> for <a
					href="https://html5up.net">HTML5 UP</a>.
			</p>
		</header>

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li><a href="#intro" class="active">Introduction</a></li>
				<li><a href="#first">First Section</a></li>
				<li><a href="#second">Second Section</a></li>
				<li><a href="#cta">Get Started</a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Get Started -->
			<section id="cta" class="main special">
				<header class="major">
					<h2>로그인</h2>
					<section>
						<div class="table-wrapper">
							<form action="control.jsp" method="post" name="loginForm">
							<input type="hidden" name="action" value="login">
								<table class="alt">
									<tbody>
										<tr>
											<td>ID</td>
											<td><div class="col-6 col-12-xsmall">
													<input input type="text" name="mid">
												</div></td>
										</tr>
										<tr>
											<td>PW</td>
											<td><div class="col-6 col-12-xsmall">
													<input type="password" name="mpw">
												</div></td>
										</tr>
										<tr>
											<td colspan="2"><ul class="actions special">
													<li><input type="submit" value="로그인"></li>
												</ul></td>
										</tr>
									</tbody>
								</table>
							</form>
						</div>
					</section>
				</header><a href="reg.jsp" class="button">회원가입</a>
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