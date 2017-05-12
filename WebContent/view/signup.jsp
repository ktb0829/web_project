<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
 


</head>
<body>



 <div id = "signup" class="col-md-12">
        <div class="page-header">
    	    <h1>회원가입 <small>Sign Up</small></h1>
        </div>
        <form class="form-horizontal" method="post" action="xxx.seonmi?cmd=main-page">
        
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
          
          
<!--           <label class="col-sm-3 control-label" for="inputAgree">약관 동의</label> -->
<!--             <div class="col-sm-6" data-toggle="buttons"> -->
<!--               <label class="btn btn-warning active"> -->
<!--                 <input id="agree" type="checkbox" autocomplete="off" chacked> -->
<!--                   <span class="fa fa-check"></span> -->
<!--               </label> -->
<!--               <a href="#">이용약관</a> 에 동의 합니다. -->
<!--             </div> -->
<!--           </div> -->
        <div class="form-group">
          <div class="col-sm-12 text-center">
            <button class="btn btn-primary" type="submit">회원가입<i class="fa fa-check spaceLeft"></i></button>
            <button class="btn btn-danger" type="submit">가입취소<i class="fa fa-times spaceLeft"></i></button>
          </div>
          
          </div>
        
        
        </form>
          <hr>
        </div>
      </article>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/web_project/js/bootstrap.min.js"></script>





</body>
</html>