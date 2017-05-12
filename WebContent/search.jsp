<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@ page import ="library.model.Book" %>
<%
	boolean flag = true;
	if( (List)request.getAttribute("list") == null ) {
		flag = false;
	}
	List list = (List)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="loginpopup.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {
    //검색어 입력
    $("div.srch input.input_txt").focus(function() {
       if ($(this).val() == '검색어를 입력하세요.') {
          $(this).val('');
       }
    }).blur(function() {
       if ($(this).val() == '') {
          $(this).val('검색어를 입력하세요.');
       }
    });
    
    
    $('#reserve').click(function() {
    	$('#reserve').each(function() {
    		$('#bookNum').val($(this).parent().parent().find('td:eq(0)').text());
    		$('#bookTitle').val($(this).parent().parent().find('td:eq(1)').text());
    		$('#bookWriter').val($(this).parent().parent().find('td:eq(2)').text());
    		$('#bookPublisher').val($(this).parent().parent().find('td:eq(3)').text());
    		$('#bookGenre').val($(this).parent().parent().find('td:eq(4)').text());
    		
        	//Getting the variable's value from a link
        	var loginBox = $(this).attr('href');
      
        	//Fade in the Popup
        	$('.login-popup').fadeIn(300);
               
        	//Set the center alignment padding + border see css style
        	var popMargTop = ($(loginBox).height() + 24) / 2; 
       	 	var popMargLeft = ($(loginBox).width() + 24) / 2; 
        
        	$(loginBox).css({ 
            	'margin-top' : -popMargTop,
            	'margin-left' : -popMargLeft
        	});
        
        	// Add the mask to body
        	$('body').append('<div id="mask"></div>');
        	$('#mask').fadeIn(300);
    	});
    });
    // When clicking on the button close or the mask layer the popup closed
    $('.close, #mask').bind('click', function() { 
      $('#mask, .login-popup').fadeOut(300 , function() {
        $('#mask').remove();
    });
    return false;
    });
});
 
</script>
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="default1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>

<!--  login popup -->

<div id="login-box" class="login-popup">
<a class="close"><img class="btn_close" title="Close Window" alt="Close" /></a>
  <form method="post" class="signin">
        <fieldset class="textbox">
        <label class="bookNum">
        <span>책번호</span>
        <input id="bookNum" name="bookNum" value="" type="text" autocomplete="on">
        </label>
        <label class="bookTitle">
        <span>책제목</span>
        <input id="bookTitle" name="bookTitle" value="" type="text" autocomplete="on">
        </label>
        <label class="bookWriter">
        <span>글쓴이</span>
        <input id="bookWriter" name="bookWriter" value="" type="text" autocomplete="on">
        </label>
        <label class="bookPublisher">
        <span>출판사</span>
        <input id="bookPublisher" name="bookPublisher" value="" type="text" autocomplete="on">
        </label>
        <label class="bookGenre">
        <span>장르</span>
        <input id="bookGenre" name="bookGenre" value="" type="text" autocomplete="on">
        </label>
             
        <button class="submit button" type="button">Reserve</button>
        </fieldset>
  </form>
</div>

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
		
		<div class="lo_1000" id="contentsArea">
      <!-- ========== 내용시작부분 ========== -->

      <div class="sub_datasearch_collection">

         <!--START 검색바  -->
         <div class="datasearch_sub_main">
            <form method="post" name="main_search" id="main_search" class="sub_search" action="xxx.library?cmd=search">
                  <legend>검색</legend>
                  <h5 class="section_sch_tlt">
                     <span>소장자료</span>
                  </h5>
                  <div class="srchBox">
                     <div class="srch">
                        <select id='select' class="select" name="select" title="검색구분 선택">
                           <option value="제목" selected="selected">제목</option>
                           <option value="저자">저자</option>
                           <option value="출판사">출판사</option>
                           
                        </select> <input id="akcKwd" name = "input" type="text" class="input_txt"
                           value="검색어를 입력하세요." title="검색어입력">
                           <input type="submit" value="검색" />
                     </div>
                  </div>
            </form>
         </div>
      </div>
   </div>


   <!-- 검색 리스트가 나오는 부분  -->
   <br/>
   <div class="search_line">

      <!-- 리스트창  -->
      <div class="search">
               <div class="searchList">
                  <div class="fr">
                  <br/>
                  
                  <% if(flag == false) { }
                  else 
                  {	%>
                                      
                    <table class="table" border="0">
                  	<thead>
         			<tr>
            			<th> 책번호 </th>
            			<th> 책제목 </th>
            			<th> 글쓴이 </th>
            			<th> 출판사 </th>
            			<th> 장  르 </th>
            			<th> 위  치 </th>
            			<th> 상  태 </th>
            			<th> 예  약 </th>
         			</tr>
         			</thead>                  
                  <%
                	  for ( int i = 0 ; i < list.size() ; i++ ) {
                	  Book book = (Book)list.get(i);
                  %> 
                  	<tr>
            			<td><%=book.getBookNum() %></td>
            			<td><%=book.getBookTitle() %></td>
            			<td><%=book.getBookWriter() %></td>
            			<td><%=book.getBookPublisher() %></td>
            			<td><%=book.getBookGenre() %></td>
            			<td><%=book.getBookLocation() %> </td>
            			<td><%=book.getBookState() %> </td>
            			<td><input type='button' id='reserve' value="예약" /></td>
         			</tr>
                  <% } } %>
                  </table>
                  </div>
               </div>
      </div>
   </div>
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