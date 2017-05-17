<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>인사말</title>

<style type="text/css">
#sub_print_1{
	padding-left: 20px;
	padding-top:40px;
	padding-bottom: 30px;
}
 
</style>

<meta name="keywords" content="" />
<meta name="description" content="" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="/web_project/js/jquery.slidertron-1.3.js"></script>

<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800" rel="stylesheet" />
<link href="/web_project/css/defaulthee.css" rel="stylesheet" type="text/css" />
<link href="/web_project/css/fonts.css" rel="stylesheet" type="text/css" />

</head>
<body>


<script type="text/javascript">

$(document).ready(function() {

	//인사말 버튼 눌렀을때 
   $('#greeting').click(function(){
	$(this).attr("href" ,"xxx.seonmi?cmd=greeting-page");
	});
	
   //시설현황 버튼 눌렀을때 
   $('#facility').click(function(){
     $(this).attr("href", 'xxx.seonmi?cmd=facility-page');
   	});
    
   //자료현황 버튼 눌렀을때
   $('#data').click(function(){
	  $(this).attr("href", 'xxx.seonmi?cmd=data-page'); 
   });
   
   //찾아오시는길 버튼 눌렀을때 
   $('#load').click(function(){
	  $(this).attr("href", 'xxx.seonmi?cmd=load-page'); 
   });
});
</script>

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
	        <li/><li><a href="#" id="greeting" >인사말</a></li>
	        <li>|</li>
	        <li><a href="#" id="facility">시설현황</a></li>
	        <li>|</li>
	        <li><a href="#" id="data">자료현황</a></li>
	        <li>|</li>
	        <li><a href="#" id="load">찾아 오시는 길</a></li><li/>	        
	    </ul>
	   </div>
	 
	 <!-- 인사말  -->
	 <!-- *********************************************************************** -->

     <table width="700" border="0" cellspacing="0" cellpadding="2" id="sub_print">
        <tr> 
        <br/><br/>
          <td id="sub_print_1"><img src="/web_project/images/인사말.PNG" alt="" /></td>
        </tr>

        <tr>
          <td style="line-height:22px;"><img src="/web_project/images/인사말2.PNG" alt="지식은 나누고 행복은 더하는 kosta 도서관" width="640" height="90" />
		    <p><font color="black" size="2"><b>kosta 도서관 홈페이지 방문을 진심으로 환영합니다.</b></font> 
            <p><font size="2" face="굴림체">&nbsp;&nbsp;kosta 도서관은 1922년 중구 율목동에서 '시립도서관'으로 개관하여 인천의 대표도서관으로<br>성장하기까지 인천시민의 지식과 지혜의 보고(寶庫)로 시민들과 함께 호흡해 왔으며 친숙한<br>문화공간으로서의 역할과 기능을 충실히 담당해 오고 있습니다.</font><p>
            </td>
        </tr>
        <tr>
          <td style="line-height:22px;"><font size="2" face="굴림체">
            &nbsp;&nbsp;또한, 시민들의 삶의 질 향상과 정서순화를 위해 평생학습 교육, 어린이 참여 프로그램, 문화행사,<br>영화상영 등 다양한 교육·문화 프로그램을 운영하여 시민 여러분의 적극적인 참여와 높은 호응을<br>얻고 있습니다.</font>
          </td>
        </tr>
        <tr> 
		  <table width="700" border="0" cellspacing="0" cellpadding="2">
              <tr>
                <td valign="top" style="line-height:22px;"><font size="2" face="굴림체">
				&nbsp;&nbsp;앞으로도 우리 kosta 도서관은 지식·정보의 전달자로서 시민<br>누구나 학습과 문화생활을 즐기고 정보를 공유하고 소통하는데<br>불편함이 없도록"<font color="blue">지식은 나누고</font>,<font color="green"> 행복은 더하는</font>" 종합문화<br>공간으로서의 역할을 성실히 수행할 것을 약속드립니다.<p>
				시민 여러분의 따뜻한 관심과 많은 이용바랍니다.<p>
				감사합니다.</font>
                 </td>			  
                <td><img src="/web_project/images/logo.png" alt="2014년 2월 인천광역시 kosta도서관장 이길주" /></td>			  
              </tr>
            </table>
        </tr>

     </table>
	 
	 <!-- *********************************************************************** -->
<div id="menu_service">
		<div id="featured_" class="container">
				<div class="column_1"><img id="icon1" src="/web_project/images/민원.PNG"> <br/>
				<div class="title">
					<h2>민원</h2>					
				</div>
			</div>
			<div class="column_2"> <img id="icon2" src="/web_project/images/대여.PNG"><br/>
				<div class="title
				">
					<h2>대출연장,예약</h2>
				</div>
			</div>
			<div class="column_3"><img id="icon3" src="/web_project/images/대여연장.PNG"><br/>
				<div class="title">
					<h2>희망도서신청</h2>
				</div>
			</div>
			<div class="column_4"> <img id="icon4" src="/web_project/images/열람실좌석정보.PNG"><br/>
				<div class="title">
					<h2>열람실좌석정보</h2>
				</div>
			</div>
			
			<div class="column_5"><img id="icon5" src="/web_project/images/택배서비스.PNG"><br/>
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