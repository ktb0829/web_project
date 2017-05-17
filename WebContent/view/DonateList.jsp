<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="board.donate.model.Donate"%>

<%
String projectName = "/web_project/view";
%>

<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="board.donate.*" %>
<%@ page import="board.donate.mybatis.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%

	List<DonateComment> mList = (List<DonateComment>)request.getAttribute("list");


%>    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- BootStrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>게시판 틀</title>
 
<meta name="keywords" content="" />
<meta name="description" content="" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="/web_project/js/jquery.slidertron-1.3.js"></script>

<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800" rel="stylesheet" />
<link href="/web_project/css/defaulthee.css" rel="stylesheet" type="text/css" media="all" />
<link href="/web_project/css/fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="/web_project/css/allboard.css" rel="stylesheet" type="text/css" media="all" />



 
</head>
<body>

<div id="header-wrapper">
   <div id="header" class="container">
        
      <div id="logo">
         <h1><a href=".notice">KOSTA library</a></h1>
      </div>
      
      <div id="menu">
      
         <div id="menu_form">
         <ul>
            <li><a href="library.library?cmd=home" accesskey="2" title="">HOME</a></li>
            <li><a href="#" accesskey="3" title="">LOGIN</a></li>
            <li><a href="#" accesskey="4" title="">SIGN UP</a></li>
            <li><a href="#" accesskey="5" title="">ENG</a></li>
         </ul><br/><br/>
         </div>

         <div id="menu_top">    
         	<ul>
         		<li class="main_menu"><a href="List.answer?cmd=answer-list">민원창구</a><br/>
         			<ul id="hide">
         			<br/>
         			<li><a href="List.answer?cmd=answer-list">개선 및 건의사항</a></li><br/>	        			
         			<li><a href="#">분실물 센터</a></li><br/>
         			<li><a href="#">자유게시판</a></li><br/><br/>
         			</ul> 
         		</li>    
         		<li class="main_menu"><a href="donate.donate?cmd=donate-list">참여이용안내</a><br/>
         			<ul id="hide">
         			<br/>
         			<li><a href="#">도서관 이용 안내</a></li><br/>	
         			<li><a href="donate.donate?cmd=donate-list">도서 기부</a></li><br/>      
         			<li><a href="#">이 달의 행사</a></li><br/><br/>
         			</ul>          			
         		</li>
         		<li class="main_menu"><a href="library.library?cmd=main-search">자료검색</a><br/>
         			<ul id="hide">
         			<br/>
         			<li><a href="library.library?cmd=main-search">도서 자료 검색</a></li><br/>	
         			<li><a href="#">신작 자료</a></li><br/><br/>
         			</ul>
         		</li>
         		<li class="main_menu"><a href="library.library?cmd=main-reserve">온라인 서비스</a><br/>
         			<ul id="hide">
         			<br/>
         			<li><a href="library.library?cmd=main-reserve">대여예약</a></li><br/>	
         			<li><a href="library.library?cmd=rent">대여연기</a></li><br/>
         			<li><a href="library.library?cmd=study">열람실 좌석 현황</a></li><br/>
         			<li><a href="#">택배 서비스</a></li><br/><br/>
         			</ul>
         		</li>
         		<li class="main_menu"><a href="library.library?cmd=greeting_page">도서관소개</a><br/>
         			<ul id="hide">
         			<br/>
         			<li><a href="xxx.seonmi?cmd=greeting-page">인사말</a></li><br/>	
         			<li><a href="xxx.seonmi?cmd=facility-page">시설현황</a></li><br/>
         			<li><a href="xxx.seonmi?cmd=data-page">자료현황</a></li><br/>
         			<li><a href="xxx.seonmi?cmd=load-page">찾아오시는 길</a></li><br/><br/>
         			</ul>
         		</li>        		         		         		  
         	</ul>         	
         </div>   
     </div>
      
     <div id="background_img">
     	<ul>     	
     		<img src="/web_project/images/캡처.png"/>
     	</ul>
     </div>
     
   <div id ="wrapper2">
   
	   <div id="menu_bar"><br/>
	   	 <ul>
	        <li/><li><a href="List.answer?cmd=answer-list">개선 및 건의사항</a></li>
	        <li>|</li>
	        <li><a href="#">자유게시판</a></li>
	        <li>|</li>
	        <li><a href="#">분실물센터</a></li><li/>	        
	    </ul>
	   </div>
	   
	   
	  <!-- 본문 내용 -->
	  <!-- *********************************************************************** -->
	  
	  	<div class="">
		<div class="board">


			<h1>개선 및 건의사항</h1>
			<br/>
<!-- 			<button class="btn btn-primary" style="float: right;" -->
<!-- 				onclick="location.href='/board/post'">작성</button> -->
			<table class="table">
				<tr>
					<th>번호</th>
					<th>사진</th>
					<th>말머리</th>
					<th class="table_title">제목</th>
					<th>이름</th>
					<th>일자</th>
					<th>상태</th>
					<th>조회</th>
				</tr>
			
			<% if( mList == null ) { %>
				<tr><td colspan="5"> 게시판 등록된게 없다! </td></tr>
			<% } else { %>
				
				<%for( DonateComment rec : mList ) { %>
				<tr>
					<td><%=rec.getDonateNum() %></td>
					<td><img src="/web_project/images/<%=rec.getDonatePicPath()%>" alt="책 이미지" class="bookimg"></td>
					<td><%= rec.getDonation() %></td>
					<td class="table_title table_title_td"><a href="<%=projectName%>/list.donate?cmd=donate-detail&num=<%=rec.getDonateNum()%>"><%= rec.getDonateTitle() %></a></td>
					<td><%= rec.getId() %></td>		
					<td><%= rec.getDonateDay() %></td>
					<td><%= rec.getDonateFinish() %></td>
					<td><%= rec.getDonateReadCount() %></td>
				</tr>
				
				
				<% } // end for %>
			<% } // end else %>
					
				<tr>
					<td colspan="1"><a class="btn btn-primary btn-lg" href="<%=projectName%>/insert.donate?cmd=donate-insert">글쓰기</a></td>
				</tr>
			</table>
			
		</div>
	</div>
	  
	  <!-- *********************************************************************** -->




	 <div id="menu_service">
		<div id="featured_" class="container">
			<div class="column_1"><a href='List.answer?cmd=answer-list'><span class="icon icon-gift"></a></span><br/>
				<div class="title">
					<h2>민원</h2>					
				</div>
			</div>
			<div class="column_2"><a href='library.library?cmd=main-reserve'><span class="icon icon-glass"></a></span><br/>
				<div class="title
				">
					<h2>대여예약</h2>
				</div>
			</div>
			<div class="column_3"><a href='library.library?cmd=rent'><span class="icon icon-music"></a></span><br/>
				<div class="title">
					<h2>대여연장</h2>
				</div>
			</div>
			<div class="column_4"><a href='library.library?cmd=study'><span class="icon icon-group"></a></span><br/>
				<div class="title">
					<h2>열람실좌석정보</h2>
				</div>
			</div>
			
			<div class="column_5"> <span class="icon icon-book"></span><br/>
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
					
						<li><a href="http://www.riss.kr/index.do"><img src="/web_project/images/riss.PNG"></img></a></li>
						<li><a href="https:www.naver.com"><img src="/web_project/images/naver.PNG"></img></a></li>
						<li><a href="http://www.nanet.go.kr/main.do"><img src="/web_project/images/국회도서관.PNG"></img></a></li>
						<li><a href="http://www.nl.go.kr/nl/index.jsp"><img src="/web_project/images/국립중앙도서관.PNG"></img></a></li>
						<li><a href="http://www.google.com"><img src="/web_project/images/google.PNG"></img></a></li>
					</ul>
</div> 
				
				
<!-- ************************************************************************ -->				
<div id="copyright" class="container">
	<p>&copy; Untitled. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
</div>	

</div>
  

     
     
</body>
</html>