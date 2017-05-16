<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
String projectName = "/Temp/view";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 틀</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<meta name="keywords" content="" />
<meta name="description" content="" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript"
	src="/Temp/js/jquery.slidertron-1.3.js"></script>

<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800"
	rel="stylesheet" />
<link href="/Temp/css/default.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="/Temp/css/defaulthee.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="/Temp/css/fonts.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="/Temp/css/answerinsert.css" rel="stylesheet"
	type="text/css" media="all" />


</head>
<body>

	<div id="header-wrapper">
		<div id="header" class="container">

			<div id="logo">
				<h1>
					<a href="#">KOSTA library</a>
				</h1>
			</div>

			<div id="menu">

				<div id="menu_form">
					<ul>
						<li><a href="#" accesskey="2" title="">HOME</a></li>
						<li><a href="#" accesskey="3" title="">LOGIN</a></li>
						<li><a href="#" accesskey="4" title="">SIGN UP</a></li>
						<li><a href="#" accesskey="5" title="">ENG</a></li>
					</ul>
					<br /> <br />
				</div>

				<div id="menu_top">
					<ul>
						<li class="main_menu"><a href="#">민원창구</a><br />
							<ul id="hide">
								<br />
								<li><a href="#">개선 및 건의사항</a></li>
								<br />
								<li><a href="#">설문조사</a></li>
								<br />
								<li><a href="#">분실물 센터</a></li>
								<br />
								<li><a href="#">자유게시판</a></li>
								<br />
								<br />
							</ul></li>
						<li class="main_menu"><a href="#">참여이용안내</a><br />
							<ul id="hide">
								<br />
								<li><a href="#">도서관 이용 안내</a></li>
								<br />
								<li><a href="#">도서 기부</a></li>
								<br />

								<li><a href="#">독서 커뮤니티</a></li>
								<br />
								<br />
							</ul></li>
						<li class="main_menu"><a href="#">자료검색</a><br />
							<ul id="hide">
								<br />
								<li><a href="#">도서 자료 검색</a></li>
								<br />
								<li><a href="#">신작 자료</a></li>
								<br />
								<li><a href="#">대출 베스트</a></li>
								<br />
								<br />
							</ul></li>
						<li class="main_menu"><a href="#">온라인 서비스</a><br />
							<ul id="hide">
								<br />
								<li><a href="#">대출예약</a></li>
								<br />
								<li><a href="#">대출조회/연기</a></li>
								<br />
								<li><a href="#">오디오 북</a></li>
								<br />
								<li><a href="#">열람실 좌석 현황</a></li>
								<br />
								<li><a href="#">택배 서비스</a></li>
								<br />
								<br />
							</ul></li>
						<li class="main_menu"><a href="#">도서관소개</a><br />
							<ul id="hide">
								<br />
								<li><a href="#">인사말</a></li>
								<br />
								<li><a href="#">시설현황</a></li>
								<br />
								<li><a href="#">자료현황</a></li>
								<br />
								<li><a href="#">찾아오시는 길</a></li>
								<br />
								<br />
							</ul></li>
					</ul>
				</div>
			</div>

			<div id="background_img">
				<ul>
					<img src="/Temp/images/캡처.png" />
				</ul>
			</div>

			<div id="wrapper2">

				<div id="menu_bar">
					<br />
					<ul>
						<li><a href="#">개선 및 건의사항</a></li>
						<li>|</li>
						<li><a href="#">자유게시판</a></li>
						<li>|</li>
						<li><a href="#">분실물센터</a></li>
					</ul>
				</div>


				<!-- 본문 내용 -->
				<!-- *********************************************************************** -->

				<div class="container">
					<table class="table table-bordered">
						<thead>
						<h1>글쓰기</h1>
						</thead>
						<tbody>
						
							<form action="<%=projectName%>/insert.answer?cmd=answer-save" method="post"
								encType="multiplart/form-data">
								
								<tr>
									<th>제  목:</th>
									<td><input type="text" placeholder="제목을 입력하세요. "
										name="boardTitle" class="form-control" /></td>
								</tr>
								
								<tr>
									<th>말 머 리:</th>
									<td><input type="text" placeholder="말머리를 입력하세요 "
										name="boardType" class="form-control" /></td>
								</tr>
								
								<tr>
									<th>내  용:</th>
									<td><textarea cols="120" rows="20" placeholder="내용을 입력하세요. "
											name="boardContent" class="form-control"></textarea></td>
								</tr>
							
							
								<tr>
									<td colspan="3"><button  class="btn btn-primary btn-lg" type="submit">등록</button></td>
<!-- 									<td colspan="2"><input type="button" value="등록" -->
<!-- 										onclick="sendData()" class="pull-right" />  -->
<!-- 										<input type="button" value="reset" class="pull-left" />  -->
<!-- 										<input type="button" value="LIST " class="pull-right" onclick="javascript:location.href='answerlist.jsp" />  -->
<!-- 									</td> -->
								</tr>
							</form>
						</tbody>
					</table>
				</div>

				<!-- *********************************************************************** -->




				<div id="menu_service">
					<div id="featured_" class="container">
						<div class="column_1">
							<a href=''><span class="icon icon-gift"></a></span><br />
							<div class="title">
								<h2>민원</h2>
							</div>
						</div>
						<div class="column_2">
							<span class="icon icon-glass"></span><br />
							<div class="title">
								<h2>대출연장,예약</h2>
							</div>
						</div>
						<div class="column_3">
							<span class="icon icon-music"></span><br />
							<div class="title">
								<h2>희망도서신청</h2>
							</div>
						</div>
						<div class="column_4">
							<span class="icon icon-group"></span><br />
							<div class="title">
								<h2>열람실좌석정보</h2>
							</div>
						</div>

						<div class="column_5">
							<span class="icon icon-book"></span><br />
							<div class="title">
								<h2>택배서비스</h2>
							</div>
						</div>
					</div>
				</div>

			</div>

			<!-- link part -->
			<!-- ************************************************************************* -->


			<div class="sbox1">
				<ul class="style2">

					<li><a href="http://www.riss.kr/index.do"><img
							src="/Temp/images/riss.PNG"></img></a></li>
					<li><a href="https:www.naver.com"><img
							src="/Temp/images/naver.PNG"></img></a></li>
					<li><a href="http://www.nanet.go.kr/main.do"><img
							src="/Temp/images/국회도서관.PNG"></img></a></li>
					<li><a href="http://www.nl.go.kr/nl/index.jsp"><img
							src="/Temp/images/국립중앙도서관.PNG"></img></a></li>
					<li><a href="http://www.google.com"><img
							src="/Temp/images/google.PNG"></img></a></li>
				</ul>
			</div>


			<!-- ************************************************************************ -->
			<div id="copyright" class="container">
				<p>
					&copy; Untitled. All rights reserved. | Photos by <a
						href="http://fotogrph.com/">Fotogrph</a> | Design by <a
						href="http://templated.co" rel="nofollow">TEMPLATED</a>.
				</p>
			</div>

		</div>
</body>
</html>