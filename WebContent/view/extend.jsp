<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@ page import ="library.model.Rent" %>
<%
	boolean flag = true;
	if( (List)request.getAttribute("rent") == null ) {
		flag = false;
	}
	List<Rent> list = (List<Rent>)request.getAttribute("rent");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>대출조회/연기</title>

<meta name="keywords" content="" />
<meta name="description" content="" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$('.extend').click( function() {
		$(location).attr('href', 'library.library?cmd=extend&rentNum='+$(this).parent().parent().find('td:eq(0)').text());
	});
});
</script>
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800" rel="stylesheet" />
<link href="/web_project/css/defaulthee.css" rel="stylesheet" type="text/css" media="all" />
<link href="/web_project/css/fonts.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>

   <div id="header" class="container">
        
      <div id="logo">
         <h1><a href="library.library?cmd=home">KOSTA library</a></h1>
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
      
     <div id="background_img">
     	<ul>     	
     		<img src="/web_project/images/캡처.png"/>
     	</ul>
     </div>
     
   <div id ="wrapper2">
   
	   <div id="menu_bar"><br/>
	   	 <ul>
	        <li><a href="#">대출예약</a></li>
	        <li>|</li>
	        <li><a href="#">대출조회/연기</a></li>
	        <li>|</li>
	        <li><a href="#">열람실 좌석 현황</a></li>	
	        <li>|</li>
	        <li><a href="#">택배 서비스</a></li>	        
	    </ul>
	   </div>
	  <!-- 본문 내용 -->
	  <!-- *********************************************************************** -->
	  <div class="search_line">

      <!-- 리스트창  -->
      <div class="search">
               <div class="searchList">
                  <div class="fr">
                  <br/>
                  
                  <% if(flag == false) { }
                  else 
                  {	%>
                    <table class="table" border="0" cellspacing="0" cellpadding="10">
                  	<thead>
         			<tr>
            			<th> 대여번호 </th>
            			<th> 책번호 </th>
            			<th> 책제목 </th>
            			<th> 대여날짜 </th>
            			<th> 반납예정일 </th>
            			<th> 연장여부 </th>
            			<th> 대여상태 </th>
            			<th> 대여연장 </th>
         			</tr>
         			</thead>       
                  <%
                	  for ( int i = 0 ; i < list.size() ; i++ ) {
                		  Rent rent = (Rent)list.get(i);
                  %>
                  	<tr>
            			<td><%=rent.getRentNum() %></td>
            			<td><%=rent.getNum() %></td>
            			<td><%=rent.getBookTitle() %></td>
            			<td><%=rent.getRentDay() %></td>
            			<td><%=rent.getReturnSchedule() %></td>
            			<td><%=rent.getRentExtension() %></td>
            			<td><%=rent.getRentState() %></td>
            			<% if(rent.getRentExtension().equals("가능")) { %>
            			<td><input type='button' class='extend' value='연장'></td>
            			<% } %>
         			</tr>
                  <% } } %>
                  </table>
                  </div>
               </div>
      </div>
   </div>
	  
	  
	  <!-- *********************************************************************** -->

	 <div id="menu_service">
		<div id="featured_" class="container">
			<div class="column_1"> <a href=''><span class="icon icon-gift"></a></span><br/>
				<div class="title">
					<h2>민원</h2>					
				</div>
			</div>
			<div class="column_2"> <span class="icon icon-glass"></span><br/>
				<div class="title
				">
					<h2>대출연장,예약</h2>
				</div>
			</div>
			<div class="column_3"> <span class="icon icon-music"></span><br/>
				<div class="title">
					<h2>희망도서신청</h2>
				</div>
			</div>
			<div class="column_4"> <span class="icon icon-group"></span><br/>
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