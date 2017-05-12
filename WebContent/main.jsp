<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>




<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="login.css">
<link rel="stylesheet" href="loginpopup.css">
<link rel="stylesheet" href="flexslider.css">




<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>





<meta name="keywords" content="" />
<meta name="description" content="" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="jquery.slidertron-1.3.js"></script>
<script src="jquery.flexslider.js" type="text/javascript"></script>
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />



</head>
<script type="text/javascript">
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
				
			if( data.trim() =='loginFaile'){
				
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
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href='http://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />




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
	
	
	$('#login').click(function() {
    		
		

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
    
    return false;
});

		
// When clicking on the button close or the mask layer the popup closed
$('a.close, #mask').bind('click', function() { 
  $('#mask , .login-popup').fadeOut(300 , function() {
    $('#mask').remove();  
}); 
return false;
});


});

</script>
<!--  end login popup  -->



<div id="header-wrapper">
   <div id="header" class="container">
      
      <div id="logo">
         <h1><a href="#">KOSTA library</a></h1>
      </div>
      
      <div id="menu">
         <div id="menu_form">
         <ul>
            <li><a href="#" accesskey="2" title="">HOME</a></li>
            <li><a id = "login" href="#" accesskey="3" title="">LOGIN</a></li>        
            <li><a id = "sign" href="#" accesskey="4" title="">SIGN UP</a></li>
            <li><a href="#" accesskey="5" title="">ENG</a></li>
         </ul><br/><br/>
         </div>

         <div id="menu_top">
         <ul>
            <li class=""><a href="#" accesskey="1" title="">민원창구</a></li>
            <li class=""><a href="#" accesskey="2" title="">참여이용안내</a></li>
            <li class=""><a href="#" accesskey="3" title="">자료검색</a></li>
            <li class=""><a href="#" accesskey="4" title="">온라인서비스</a></li>
            <li class=""><a href="#" accesskey="5" title="">도서관소개</a></li>
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
				<input type="text" id="kwd" name="kwd" size="70"></input>
			</div>
			<div class="searchbtn">
				<button type="button" id="searchbtn" name="searchbtn">
					검색</button>
			</div>






			<div class="reel">
						<div class="slide">
							<a class="link" href="#">Full story ...</a>
							<img src="images/c.jpg" alt="" />
						</div>
						<div class="slide">
							<a class="link" href="#">Full story ...</a>
							<img src="images/d.jpg" alt="" />
						</div>
						<div class="slide">
							<a class="link" href="#">Full story ...</a>
							<img src="images/e.jpg" alt="" />
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
					calendar += '			<span><a href="#" class="tbutton previous-button" onclick="kCalendar(\'' +  id + '\', \'' + prevDate + '\')"><</a></span>';
					calendar += '			<span id="date">' + currentYear + '년 ' + currentMonth + '월</span>';
					calendar += '			<span><a href="#" class="tbutton next-button" onclick="kCalendar(\'' + id + '\', \'' + nextDate + '\')">></a></span>';
					calendar += '		</div>';
					calendar += '		<table border="0" cellspacing="0" cellpadding="10">';
					calendar += '			<caption>' + currentYear + '년 ' + currentMonth + '월 달력</caption>';
					calendar += '			<thead>';
					calendar += '				<tr>';
					calendar += '				  <th class="sun" scope="row">일</th>';
					calendar += '				  <th class="mon" scope="row">월</th>';
					calendar += '				  <th class="tue" scope="row">화</th>';
					calendar += '				  <th class="wed" scope="row">수</th>';
					calendar += '				  <th class="thu" scope="row">목</th>';
					calendar += '				  <th class="fri" scope="row">금</th>';
					calendar += '				  <th class="sat" scope="row">토</th>';
					calendar += '				</tr>';
					calendar += '			</thead>';
					calendar += '			<tbody>';
					
					var dateNum = 1 - currentDay;
					
					for(var i = 0; i < week; i++) {
						calendar += '			<tr>';
						for(var j = 0; j < 7; j++, dateNum++) {
							if( dateNum < 1 || dateNum > currentLastDate ) {
								calendar += '				<td class="' + dateString[j] + '"> </td>';
								continue;
							}
							calendar += '				<td class="' + dateString[j] + '">' + dateNum + '</td>';
						}
						calendar += '			</tr>';
					}
					
					calendar += '			</tbody>';
					calendar += '		</table>';
					calendar += '<span>참조</span>';
					
					
					content.innerHTML = calendar;
				}
			</script>

		<!-- ****************************************************************************************************************** -->


<div id="wrapper">
	<div id="featured-wrapper">
		<div id="featured" class="container">
			<div class="column1"> <a href=''><span class="icon icon-gift"></a></span><br/>
				<div class="title">
					<h2>민원</h2>
				</div>
			</div>
			<div class="column2"> <span class="icon icon-glass"></span><br/>
				<div class="title">
					<h2>대출연장,예약</h2>
				</div>
			</div>
			<div class="column3"> <span class="icon icon-music"></span><br/>
				<div class="title">
					<h2>희망도서신청</h2>
				</div>
			</div>
			<div class="column4"> <span class="icon icon-group"></span><br/>
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
		
		<div id="notice">
				<ul class="notice_header">
					<li class="selected">
						<div class="boardBox_contnetns" id="mtab_notice">
								<span>공지사항목록</span>
						</div>
					</li>
				</ul>
				<ul class="lst01">
			<li>
				<span><img src="" alt="공지사항"></span>
				<a href="">국립중앙도서관 주차장 만차시 차량  통제 계획 알림</a>
				<em>2017.04.21</em>
			</li><br/>
			<li>
				<span><img src="" alt="공고/공모"></span>
				<a href="">서지정보유통지원시스템 검색 시스템 도입 입찰 공고(재공고)</a>
				<em>2017.05.04</em>
			</li><br/>
			<li>
				<span><img src="" alt="공지사항"></span>
				<a href="">고문헌실 휴실 안내</a>
				<em>2017.05.04</em>
			</li><br/>
			<li>
				<span><img src="" alt="교육안내"></span>
				<a href="">남북협상 수석대표에게 듣는 통일과 북한 이야기</a>
				<em>2017.05.02</em>
			</li><br/>
			<li>
				<span><img src="" alt="교육안내"></span>
				<a href="">남북협상 수석대표에게 듣는 통일과 북한 이야기</a>
				<em>2017.05.02</em>
			</li><br/>
			<li>
				<span><img src="" alt="교육안내"></span>
				<a href="">남북협상 수석대표에게 듣는 통일과 북한 이야기</a>
				<em>2017.05.02</em>
			</li><br/>
			<li>
				<span><img src="" alt="교육안내"></span>
				<a href="">남북협상 수석대표에게 듣는 통일과 북한 이야기</a>
				<em>2017.05.02</em>
			</li><br/>
			<li>
				<span><img src="" alt="교육안내"></span>
				<a href="">남북협상 수석대표에게 듣는 통일과 북한 이야기</a>
				<em>2017.05.02</em>
			</li><br/>
			<li>
				<span><img src="" alt="교육안내"></span>
				<a href="">남북협상 수석대표에게 듣는 통일과 북한 이야기</a>
				<em>2017.05.02</em>
			</li><br/>
			<li class="more"><a href=""><img src="" alt="공지사항 더보기"></a></li>
		</ul>
		</div>
					
		<div class="flexslider">
		  <ul class="slides">
		    <li><img src="images/도서관.png" /></li>
		    <li><img src="images/열람실.png" /></li>
		    <li><img src="images/도서관.png" /></li>
		    <li><img src="images/열람실.png" /></li>
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
					
						<li><a href="http://www.riss.kr/index.do"><img src="images/riss.PNG"></img></a></li>
						<li><a href="https:www.naver.com"><img src="images/naver.PNG"></img></a></li>
						<li><a href="http://www.nanet.go.kr/main.do"><img src="images/국회도서관.PNG"></img></a></li>
						<li><a href="http://www.nl.go.kr/nl/index.jsp"><img src="images/국립중앙도서관.PNG"></img></a></li>
						<li><a href="http://www.google.com"><img src="images/google.PNG"></img></a></li>
					</ul>
				</div> 
				
				
<!-- ************************************************************************ -->				
<div id="copyright" class="container">
	<p>&copy; Untitled. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
</div>
</body>
</html>