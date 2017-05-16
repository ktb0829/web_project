<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title> 

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="/web_project/css/signup.css" >
<link rel="stylesheet" href="/web_project/css/defaulthee.css">
<link href="/web_project/css/fonts.css" rel="stylesheet" type="text/css" media="all" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
 
 <script type="text/javascript">
 
$(document).ready(function(){
	

$('#smain-page').click(function(){
     
	//회원가입 화면 전환 
       $(location).attr("href", 'xxx.seonmi?cmd=login-page');
   
	});
});
</script>


</head>
<body>

<div id="header-wrapper">
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
         			<li><a href="#">분실물 센터</a></li><br/>
         			<li><a href="#">자유게시판</a></li><br/><br/>
         			</ul> 
         		</li>    
         		<li class="main_menu"><a href="#">참여이용안내</a><br/>
         			<ul id="hide">
         			<br/>
         			<li><a href="#">도서관 이용 안내</a></li><br/>	
         			<li><a href="#">도서 기부</a></li><br/>      
         			<li><a href="#">이 달의 행사</a></li><br/><br/>
         			</ul>          			
         		</li>
         		<li class="main_menu"><a href="#">자료검색</a><br/>
         			<ul id="hide">
         			<br/>
         			<li><a href="#">도서 자료 검색</a></li><br/>	
         			<li><a href="#">신작 자료</a></li><br/><br/>
         			</ul>
         		</li>
         		<li class="main_menu"><a href="#">온라인 서비스</a><br/>
         			<ul id="hide">
         			<br/>
         			<li><a href="#">대출예약</a></li><br/>	
         			<li><a href="#">대출조회/연기</a></li><br/>
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

	   
	   
	  <!-- 본문 내용 -->
	  <!-- *********************************************************************** -->
	  <div id = "signup" class="col-md-12">
        <div class="page-header">
        	  <br/><br/>
	     	    <h1>회원가입 <small>Sign Up</small></h1>
        </div>
        <form class="form-horizontal" method="post" action="xxx.seonmi?cmd=main-page">
  
        <br/>
        <br/>
        <div class="form-group">        	
          <label class="col-sm-3 control-label" for="inputEmail">ID</label>
        <div class="col-sm-6">
          <input class="form-control" name="id" id="inputId" type="id" placeholder="ID">
        </div>
        </div>
        
           <div class="form-group">        	
          <label class="col-sm-3 control-label" for="inputAddr">주소</label>
        <div class="col-sm-6">
          <input class="form-control" name="addr" id="inputId" type="addr" placeholder="주소">
        </div>
        </div>
        
        <div class="form-group">        	
          <label class="col-sm-3 control-label" for="inputEmail">이메일</label>
        <div class="col-sm-6">
          <input class="form-control" name="email" id="inputEmail" type="email" placeholder="이메일">
        </div>
        </div>
        <div class="form-group">
          <label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
        <div class="col-sm-6">
          <input class="form-control" name="password" id="inputPassword" type="password" placeholder="비밀번호">
        <p class="help-block">숫자, 특수문자 포함 8자 이상</p>
        </div>
        </div>
          <div class="form-group">
              <label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호 확인</label>
             <div class="col-sm-6">
              <input class="form-control" id="inputPasswordCheck" type="password" placeholder="비밀번호 확인">
                <p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
             </div>
          </div>
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputName">이름</label>
          <div class="col-sm-6">
            <input class="form-control" name="name" id="inputName" type="text" placeholder="이름">
          </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputNumber">휴대폰번호</label>
              <div class="col-sm-6">
                <div class="input-group">
                  <input type="tel" class="form-control" name="tel" id="inputNumber" placeholder="- 없이 입력해 주세요" />
                  <span class="input-group-btn">
                  </span>
                </div>
              </div>
              
        </div>

          <div class="form-group">
                      
			<label class="col-sm-3 control-label" for="inputAgree">장애여부</label>
			   <div class ="col-sm-6">

 				<label class="radio-inline">
                <input type="radio"  name="disabled" id="inlineCheckbox1" value="장애없음" />
                           해당없음
            	</label>
            	<label class="radio-inline">
                <input type="radio"  name="disabled"  id="inlineCheckbox2" value="장애" />
                           장애
            	</label>
            	<br />
			</div> <br/>
		</div>          
          

        <div class="form-group">
          <div class="col-sm-12 text-center">
            <button class="btn btn-primary" type="submit">회원가입<i class="fa fa-check spaceLeft"></i></button>
       
            <input type="button"  id="smain-page" class="btn btn-danger" value="가입취소"><i class="fa fa-times spaceLeft"></i>
              <br/><br/>
              <br/><br/>
	  
          </div>
          
          </div>
        
        
        </form>

        </div>
      </article>
    
	  
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


 

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/web_project/js/bootstrap.min.js"></script>


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