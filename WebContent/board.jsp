<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@ page import ="lib.model.Book" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">


 
</script>
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
<div id="header-wrapper">
   <div id="header" class="container">
      
      <div id="logo">
         <h1><a href="#">KOSTA library</a></h1>
      </div>
      
      <div id="menu">
         <div id="menu_form">
         <ul>
            <li><a href="#" accesskey="2" title="">HOME</a></li>
            <li><a href="#" accesskey="3" title="">LOGIN</a></li>
            <li><a href="#" accesskey="4" title="">SIGN UP</a></li>
            <li><a href="#" accesskey="5" title="">ENG</a></li>
         </ul><br/><br/>
         </div>

         <div id="menu_top">    
            <ul>
               <li class="main_menu"><a href="#">민원창구</a><br/>
                  <ul id="hide">
                  <br/>
                  <li><a href="#">개선 및 건의사항</a></li><br/>                    
                  <li><a href="#">설문조사</a></li><br/>
                  <li><a href="#">분실물 센터</a></li><br/>
                  <li><a href="#">자유게시판</a></li><br/><br/>
                  </ul> 
               </li>    
               <li class="main_menu"><a href="#">참여이용안내</a><br/>
                  <ul id="hide">
                  <br/>
                  <li><a href="#">도서관 이용 안내</a></li><br/>   
                  <li><a href="#">도서 기부</a></li><br/>
                  <li><a href="#">독서 커뮤니티</a></li><br/><br/>
                  </ul>                   
               </li>
               <li class="main_menu"><a href="#">자료검색</a><br/>
                  <ul id="hide">
                  <br/>
                  <li><a href="#">도서 자료 검색</a></li><br/>   
                  <li><a href="#">신작 자료</a></li><br/>
                  <li><a href="#">대출 베스트</a></li><br/><br/>
                  </ul>
               </li>
               <li class="main_menu"><a href="#">온라인 서비스</a><br/>
                  <ul id="hide">
                  <br/>
                  <li><a href="#">대출예약</a></li><br/>   
                  <li><a href="#">대출조회/연기</a></li><br/>
                  <li><a href="#">오디오 북</a></li><br/>
                  <li><a href="#">열람실 좌석 현황</a></li><br/>
                  <li><a href="#">택배 서비스</a></li><br/><br/>
                  </ul>
               </li>
               <li class="main_menu"><a href="#">도서관소개</a><br/>
                  <ul id="hide">
                  <br/>
                  <li><a href="#">인사말</a></li><br/>   
                  <li><a href="#">시설현황</a></li><br/>
                  <li><a href="#">자료현황</a></li><br/>
                  <li><a href="#">찾아오시는 길</a></li><br/><br/>
                  </ul>
               </li>                                              
            </ul>            
         </div> 
      </div>
   </div>
</div>

      <!-- ****************************************************************************************************************** -->
<div class="picture">
   <center><a href="#"><img src="images/c.jpg" alt="도서관 사진" /></a></center>
</div>
      <!-- ****************************************************************************************************************** -->

<div id="wrapper">
   <div id="page" class="container">
   
   
   <table class="sub_news" border="1" cellspacing="0" summary="게시판의 글제목 리스트">
<caption>게시판 리스트</caption>
<colgroup>
<col>
<col width="110">
<col width="100">
<col width="80">
</colgroup>
<thead>
<tr>
<th scope="col">제목</th>
<th scope="col">글쓴이</th>
<th scope="col">날짜</th>
<th scope="col">조회수</th>
</tr>
</thead>
<tbody></tbody>
<tr>
<td class="title">
<a href="#">게시판 제목</a>

</td>
<td class="name">글쓴이 이름</td>
<td class="date">2017/05/11</td>
<td class="hit">1234</td>
</tr>
<tr class="reply">
<td class="title" style="padding-left:30px;">
<a href="#">블로그 개편 답글</a>
</td>
</tr>
</tbody>
</table>
   
   
   
   
      </div>
      </div>
      
   
   
   
   

<!-- link part -->
<!-- ************************************************************************* -->

<div class="sbox1">
               <ul class="style2">
               
                  <li><a href="http://www.riss.kr/index.do"><img src="images/riss.PNG"></img></a></li>
                  <li><a href="https:www.naver.com"><img src="images/naver.PNG"></img></a></li>
                  <li><a href="http://www.nanet.go.kr/main.do"><img src="images/국회도서관.PNG"></img></a></li>
                  <li><a href="http://www.nl.go.kr/nl/index.jsp"><img src="images/국립중앙도서관.PNG"></img></a></li>
                  <li><a href="http://www.google.com"><img src="images/구글.PNG"></img></a></li>
               </ul>
            </div> 
            
<!-- ************************************************************************ -->            
<div id="copyright" class="container">
   <p>&copy; Untitled. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
</div>
</body>
</html>