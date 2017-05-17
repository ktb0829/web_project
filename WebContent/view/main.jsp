<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="board.notice.model.Notice"%>

<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="board.notice.*" %>
<%@ page import="board.notice.mybatis.*" %>

<%
	List<NoticeComment> mList = (List<NoticeComment>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KOSTA LIBRARY</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="/web_project/css/login.css">
<link rel="stylesheet" href="/web_project/css/loginpopup.css">
<link rel="stylesheet" href="/web_project/css/logoutpopup.css">
<link rel="stylesheet" href="/web_project/css/flexslider.css">
<link rel="stylesheet" href="/web_project/css/defaulthee.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<meta name="keywords" content="" />
<meta name="description" content="" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="/web_project/js/jquery.slidertron-1.3.js"></script>
<script src="/web_project/js/jquery.flexslider.js" type="text/javascript"></script>

<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800" rel="stylesheet" />
<link href="/web_project/css/fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="/web_project/css/notice.css" rel="stylesheet" />
</head>

<script type="text/javascript">

$(document).ready(function(){
$('#btnlogout').click(function(){


	$('.logout-popup').fadeOut();
	$("#mask").remove();
	$('#login').text('LOGIN');
	$(location).attr("href", 'xxx.seonmi?cmd=logout-page');
});
});

function loginCheck(){
   $.ajax({
      url:'login.seonmi?cmd=login-do',
      type:'post',
      data:{
           username:$('#username').val(),
           password:$('#password').val()
      },
      dataType:'text',
      success:function(data){
         if( data.trim() =='loginFail'){
            alert('로그인 실패');
         }else{
            $('#mask , .login-popup').fadeOut(300 , function() {
                $('#mask').remove();  
               $('#login').text('LOGOUT'); //값 바꾸어줌
            }); 
         }
      },
      error : function(request, status , error) {
          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
      }
            
   });
}


</script>
<body>


<!--  ********Seonmi****** -->

<!-- All the files that are required -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href='http://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

<!--  logout popup -->

<div id="logout-box" class="logout-popup">
<a href="#" class="close"><img  class="btn_close" title="Close Window" alt="Close" /></a>
  <form method="post" class="logout">
        <fieldset class="textbox">
        <label class="logout">
        <span>로그아웃 하시겠습니까?</span>
        <input id="btnlogout" name="logout" value="logout" type="button" autocomplete="on" >
        </label>
       </fieldset>
       </form>
       </div>
       

<!--  login popup -->

<div id="login-box" class="login-popup">
<a href="#" class="close"><img  class="btn_close" title="Close Window" alt="Close" /></a>
  <form method="post" class="signin">
        <fieldset class="textbox">
        <label class="username">
        <span>Id</span>
        <input id="username" name="username" value="" type="text" autocomplete="on" placeholder="Id">
        </label>
        <label class="password">
        <span>Password</span>
        <input id="password" name="password" value="" type="password" placeholder="Password">
        </label>
<!--         <button class="submit button">Sign in</button> -->
      <a href="javascript:loginCheck()" id="signInBtn">Sign in</a>
      
        <p>
        <a class="forgot" href="#">Forgot your password?</a>
        </p>        
        </fieldset>
  </form>
</div>

<script type="text/javascript">


$(document).ready(function() {

	
   //sign up 버튼 눌렀을때 
   $('#sign').click(function(){
      //회원가입 화면 전환 
      $(this).attr("href", 'xxx.seonmi?cmd=sign-page');
   
	});

   
   //로그인 버튼 눌렀을때 팝업창으로 로그인 띄우기 

   $('#login').click(function(){
	   if(  $('#login').text() == 'LOGIN'){
		 //Getting the variable's value from a link 
		    var loginBox = $(this).attr('href');
		  
		    //Fade in the Popup
		    $('.login-popup').fadeIn(300);        
		   // $('.logout-popup').hide();        
		    
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
		    
		 // When clicking on the button close or the mask layer the popup closed
			$('a.close, #mask').bind('click', function() { 
			  $('#mask , .login-popup').fadeOut(300 , function() {
			    $('#mask').remove();  
				}); 
			return false;
			});
		    
	   }else if(  $('#login').text() == 'LOGOUT' ){
		   

		   //Getting the variable's value from a link 
		    var logoutBox = $(this).attr('href');
		  
		    //Fade in the Popup
		    $('.logout-popup').fadeIn(300);        
		            
		    
		    //Set the center alignment padding + border see css style
		    var popMargTop = ($(logoutBox).height() + 24) / 2; 
		    var popMargLeft = ($(logoutBox).width() + 24) / 2; 
		    
		    $(logoutBox).css({ 
		        'margin-top' : -popMargTop,
		        'margin-left' : -popMargLeft
		    });
		    
		    // Add the mask to body
		    $('body').append('<div id="mask"></div>');
		    $('#mask').fadeIn(300);
		    
		 // When clicking on the button close or the mask layer the popup closed
			$('a.close, #mask').bind('click', function() { 
			  $('#mask , .logout-popup').fadeOut(300 , function() {
			    $('#mask').remove();  
			    			    
			    
				}); 
			return false;
			});
	   }
	});	//end of #login.click(function

      
});	//end of document ready

</script>
<!--  end login popup  -->

<div id="header-wrapper">
   <div id="header" class="container">
      
      <div id="logo">
         <h1><a href="library.library?cmd=home">KOSTA library</a></h1>
      </div>
      
      <div id="menu">
         <div id="menu_form">
         <ul>
            <li><a href="library.library?cmd=home" accesskey="2" title="">HOME</a></li>
            <li><a id = "login" href="#" accesskey="3" title="">LOGIN</a></li>        
            <li><a id = "sign" href="#" accesskey="4" title="">SIGN UP</a></li>
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
                  <li><a href="#">도서 자료 검색</a></li><br/>   
                  <li><a href="#">신작 자료</a></li><br/><br/>
                  </ul>
               </li>
               <li class="main_menu"><a href="library.library?cmd=main-reserve">온라인 서비스</a><br/>
                  <ul id="hide">
                  <br/>
                  <li><a href="library.library?cmd=main-reserve">대여예약</a></li><br/>   
                  <li><a href="library.library?cmd=rent-main">대여연기</a></li><br/>
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
   </div>
</div>

      <!-- ****************************************************************************************************************** -->

         <div id="slider">
            <a href="#" class="button previous-button"><span class="icon icon-double-angle-left"></span></a>
            <a href="#" class="button next-button"><span class="icon icon-double-angle-right"></span></a>
            <div class="viewer">

         <div class="searchbox">
         <form method="post" name="main_search" id="main_search" action="library.library?cmd=search">
         	<select id='select' class="select" name="select" title="검색구분 선택">
         		<option value="제목" selected="selected">제목</option>
                <option value="저자">저자</option>
                <option value="출판사">출판사</option>           
            </select>
            <input type="text" id="kwd" name="value" size="63" />
         </div>
         <div class="searchbtn">
            <input type="submit" id="searchbtn" name="value" value="검색">
         </form>
         </div>

         <div class="reel">
                  <div class="slide">
                     <a class="link" href="#">Full story ...</a>
                     <img src="/web_project/images/c.jpg" alt="" />
                  </div>
                  <div class="slide">
                     <a class="link" href="#">Full story ...</a>
                     <img src="/web_project/images/d.jpg" alt="" />
                  </div>
                  <div class="slide">
                     <a class="link" href="#">Full story ...</a>
                     <img src="/web_project/images/e.jpg" alt="" />
                  </div>
               </div>
            </div>
         </div>
         
         <script type="text/javascript">
            $('#slider').slidertron({
               viewerSelector: '.viewer',
               reelSelector: '.viewer .reel',
               slidesSelector: '.viewer .reel .slide',
               advanceDelay: 3000,
               speed: 'slow',
               navPreviousSelector: '.previous-button',
               navNextSelector: '.next-button',
               slideLinkSelector: '.link'
            });
            
            window.onload = function () {
               kCalendar('content');
            };
            
            function kCalendar(id, date) {
               var content = document.getElementById(id);
               
               if( typeof( date ) !== 'undefined' ) {
                  date = date.split('-');
                  date[1] = date[1] - 1;
                  date = new Date(date[0], date[1], date[2]);
               } else {
                  var date = new Date();
               }
               var currentYear = date.getFullYear();
               //년도를 구함
               
               var currentMonth = date.getMonth() + 1;
               //연을 구함. 월은 0부터 시작하므로 +1, 12월은 11을 출력
               
               var currentDate = date.getDate();
               //오늘 일자.
               
               date.setDate(1);
               var currentDay = date.getDay();
               //이번달 1일의 요일은 출력. 0은 일요일 6은 토요일
               
               var dateString = new Array('sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat');
               var lastDate = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
               if( (currentYear % 4 === 0 && currentYear % 100 !== 0) || currentYear % 400 === 0 )
                  lastDate[1] = 29;
               //각 달의 마지막 일을 계산, 윤년의 경우 년도가 4의 배수이고 100의 배수가 아닐 때 혹은 400의 배수일 때 2월달이 29일 임.
               
               var currentLastDate = lastDate[currentMonth-1];
               var week = Math.ceil( ( currentDay + currentLastDate ) / 7 );
               //총 몇 주인지 구함.
               
               if(currentMonth != 1)
                  var prevDate = currentYear + '-' + ( currentMonth - 1 ) + '-' + currentDate;
               else
                  var prevDate = ( currentYear - 1 ) + '-' + 12 + '-' + currentDate;
               //만약 이번달이 1월이라면 1년 전 12월로 출력.
               
               if(currentMonth != 12) 
                  var nextDate = currentYear + '-' + ( currentMonth + 1 ) + '-' + currentDate;
               else
                  var nextDate = ( currentYear + 1 ) + '-' + 1 + '-' + currentDate;
               //만약 이번달이 12월이라면 1년 후 1월로 출력.

               
               if( currentMonth < 10 )
                  var currentMonth = '0' + currentMonth;
               //10월 이하라면 앞에 0을 붙여준다.
               
               var calendar = '';
               
               calendar += '<div id="theader">';
               calendar += '<span>이번달 일정 안내</span><br/><br/>';
               calendar += '         <span><a href="#" class="tbutton previous-button" onclick="kCalendar(\'' +  id + '\', \'' + prevDate + '\')"><</a></span>';
               calendar += '         <span id="date">' + currentYear + '년 ' + currentMonth + '월</span>';
               calendar += '         <span><a href="#" class="tbutton next-button" onclick="kCalendar(\'' + id + '\', \'' + nextDate + '\')">></a></span>';
               calendar += '      </div>';
               calendar += '      <table border="0" cellspacing="0" cellpadding="10">';
               calendar += '         <caption>' + currentYear + '년 ' + currentMonth + '월 달력</caption>';
               calendar += '         <thead>';
               calendar += '            <tr>';
               calendar += '              <th class="sun" scope="row">일</th>';
               calendar += '              <th class="mon" scope="row">월</th>';
               calendar += '              <th class="tue" scope="row">화</th>';
               calendar += '              <th class="wed" scope="row">수</th>';
               calendar += '              <th class="thu" scope="row">목</th>';
               calendar += '              <th class="fri" scope="row">금</th>';
               calendar += '              <th class="sat" scope="row">토</th>';
               calendar += '            </tr>';
               calendar += '         </thead>';
               calendar += '         <tbody>';
               
               var dateNum = 1 - currentDay;
               
               for(var i = 0; i < week; i++) {
                  calendar += '         <tr>';
                  for(var j = 0; j < 7; j++, dateNum++) {
                     if( dateNum < 1 || dateNum > currentLastDate ) {
                        calendar += '            <td class="' + dateString[j] + '"> </td>';
                        continue;
                     }
                     calendar += '            <td class="' + dateString[j] + '">' + dateNum + '</td>';
                  }
                  calendar += '         </tr>';
               }
               
               calendar += '         </tbody>';
               calendar += '      </table>';
               
               
               content.innerHTML = calendar;
            }
         </script>

      <!-- ****************************************************************************************************************** -->


<div id="wrapper">
   <div id="featured-wrapper">
      <div id="featured" class="container">
         <div class="column1"> <a href='List.answer?cmd=answer-list'><span class="icon icon-gift"></a></span><br/>
            <div class="title">
               <h2>민원</h2>
            </div>
         </div>
         <div class="column2"><a href='library.library?cmd=main-reserve'><span class="icon icon-glass"></a></span><br/>
            <div class="title">
               <h2>대여예약</h2>
            </div>
         </div>
         <div class="column3"><a href='library.library?cmd=rent-main'><span class="icon icon-music"></a></span><br/>
            <div class="title">
               <h2>대여연장</h2>
            </div>
         </div>
         <div class="column4"><a href='library.library?cmd=study'><span class="icon icon-group"></a></span><br/>
            <div class="title">
               <h2>열람실좌석정보</h2>
            </div>
         </div>
         
         <div class="column5"> <span class="icon icon-book"></span><br/>
            <div class="title">
               <h2>택배서비스</h2>
            </div>
         </div>
      </div>
   </div>
   
<div id="page" class="container">
      <div id="content">
      </div>
      
   <div id="noticeTab" name="noticeTab" class="comment" style="display: inline-block;">
		
		<div class="boardBox_contnetns" id="mtab_notice">
		    <h2><span>공지사항목록</span></h2>
		</div>
		
			<div id="line">
				<div id="leftAlign">
					<a href="list.notice?cmd=notice-detail&num=<%=mList.get(0).getBoardNum()%>" class="unc-main"><%=mList.get(0).getBoardTitle() %></a>
				</div>
				<div id="rightAlign"><%=mList.get(0).getBoardDay() %></div>
			</div>
		
			<div id="line">
				<div id="leftAlign">
				
					<a href="list.notice?cmd=notice-detail&num=<%=mList.get(1).getBoardNum()%>" class="unc-main"><%=mList.get(1).getBoardTitle() %></a>
				</div>
				<div id="rightAlign"><%=mList.get(1).getBoardDay() %></div>
			</div>
		
			<div id="line">
				<div id="leftAlign">
					<a href="list.notice?cmd=notice-detail&num=<%=mList.get(2).getBoardNum()%>" class="unc-main"><%=mList.get(2).getBoardTitle() %></a>
				</div>
				<div id="rightAlign"><%=mList.get(2).getBoardDay() %></div>
			</div>
		
			<div id="line">
				<div id="leftAlign">
					<a href="list.notice?cmd=notice-detail&num=<%=mList.get(3).getBoardNum()%>" class="unc-main"><%=mList.get(3).getBoardTitle() %></a>
				</div>
				<div id="rightAlign"><%=mList.get(3).getBoardDay() %></div>
			</div>
		
			<div id="line">
				<div id="leftAlign">
					<a href="list.notice?cmd=notice-detail&num=<%=mList.get(4).getBoardNum()%>" class="unc-main"><%=mList.get(4).getBoardTitle() %></a>
				</div>
				<div id="rightAlign"><%=mList.get(4).getBoardDay() %></div>
			</div>
			
			<div id="line">
				<div id="leftAlign">
					<a href="list.notice?cmd=notice-detail&num=<%=mList.get(5).getBoardNum()%>" class="unc-main"><%=mList.get(5).getBoardTitle() %></a>
				</div>
				<div id="rightAlign"><%=mList.get(5).getBoardDay() %></div>
			</div>
			<h3 id="more"><span><a href="list.notice?cmd=notice-list">공지사항 더보기</a></span></h3>
						
  </div>
              
      <div class="flexslider">
        <ul class="slides">
          <li><img src="/web_project/images/도서관.png" /></li>
          <li><img src="/web_project/images/열람실.png" /></li>
          <li><img src="/web_project/images/도서관.png" /></li>
          <li><img src="/web_project/images/열람실.png" /></li>
        </ul>
      </div>
      
       <script type="text/javascript"> 
      
       $(window).load(function() {
          $('.flexslider').flexslider({ 
             minItems: 1,
             maxItems: 1
                   }); 
       });       
       </script> 
      
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
</body>
</html>