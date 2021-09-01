<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Stellar by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>회원가입</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<h1>회원가입</h1>
					</header>

						<!-- Main -->
		<div id="main">

			<!-- Get Started -->
			<section id="cta" class="main special">
				<header class="major">
					<section>
						<div class="table-wrapper">
							<form action="control.jsp" method="post" name="regForm">
							<input type="hidden" name="action" value="reg">
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
													<li><input type="submit" value="회원가입"></li>
												</ul></td>
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