<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	int seatNum = Integer.parseInt((String)request.getAttribute("seatNum"));
	seatNum = 90-seatNum;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>열람실 좌석현황</title>

<meta name="keywords" content="" />
<meta name="description" content="" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="/web_project/js/jquery.slidertron-1.3.js"></script>

<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800" rel="stylesheet" />
<link href="/web_project/css/defaulthee.css" rel="stylesheet" type="text/css" media="all" />
<link href="/web_project/css/fonts.css" rel="stylesheet" type="text/css" media="all" />


 
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
         		<li class="main_menu"><a href="#">자료검색</a><br/>
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
           <li/><li><a href="library.library?cmd=study">열람실 좌석 현황</a></li>
           <li>|</li>
           <li><a href="#">자유게시판</a></li>
           <li>|</li>
           <li><a href="#">분실물센터</a></li><li/>           
       </ul>
      </div>
      
      
     <!-- 본문 내용 -->
     <!-- *********************************************************************** -->
     <br/><br/>
     <table id="seat" width="650" border="0" cellspacing="10" cellpadding="0" align="center" class="bor_4" >
<!--           <caption>열람실 좌석현황</caption> -->
        <tbody><tr> 
          <td width="112"><a href="library.library?cmd=1th-page&num=1" onclick="window.open(this.href,'1th','width=680,height=600');return false;"><img src="/web_project/images/1열람실.PNG" border="0" alt="1열람실 현황보기(새창)" value="1열람실 현황보기"></a></td>
          <td class="seat_comm green"><img src="/web_project/images/잔여좌석.jpg" align="absmiddle" alt="잔여좌석"><%=seatNum %></td>
          <td width="8"><img align="absmiddle" alt=""></td>
          <td class="seat_comm"><img src="/web_project/images/총좌석.jpg" align="absmiddle" alt="총좌석수">90</td>
        </tr>
        <tr> 
          <td colspan="4" class="line_gray" height="1"></td>
        </tr>
        <tr> 
          <td><a href="library.library?cmd=2th-page&num=2" onclick="window.open(this.href,'2th','width=680,height=600');return false;"><img src="/web_project/images/2열람실.PNG" border="0" alt="2열람실 현황보기(새창)"></a></td>
          <td class="seat_comm green"><img src="/web_project/images/잔여좌석.jpg" align="absmiddle" alt="잔여좌석">0</td>
          <td><img  align="absmiddle" alt=""></td>
          <td class="seat_comm"><img src="/web_project/images/총좌석.jpg" align="absmiddle" alt="총좌석수">0</td>
        </tr>
        <tr> 
          <td colspan="4" class="line_gray" height="1"></td>
        </tr>
        <tr> 
          <td><a href="library.library?cmd=3th-page&num=3" onclick="window.open(this.href,'3th','width=680,height=600');return false;" onkeypress="window.open(this.href,'3th','width=680,height=500');return false;">
          <img src="/web_project/images/3열람실.PNG" border="0" alt="3열람실 현황보기(새창)"></a></td>
          <td class="seat_comm green"><img src="/web_project/images/잔여좌석.jpg" align="absmiddle" alt="잔여좌석">0</td>
          <td><img align="absmiddle" alt=""></td>
          <td class="seat_comm"><img src="/web_project/images/총좌석.jpg" align="absmiddle" alt="총좌석수">0</td>
        </tr>
        <tr> 
          <td colspan="4" class="line_gray" height="1"></td>
        </tr>
      </tbody></table>
      <div>
      <tr>
         <table width="500" border="0" cellspacing="0" cellpadding="2">
         <td>
          <img src="/web_project/images/열람실내용.PNG">
         </td>
         </table>
         </tr>
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
            <div class="title">
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