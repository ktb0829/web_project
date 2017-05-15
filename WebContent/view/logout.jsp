<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="/web_project/css/login.css">
<link rel="stylesheet" href="/web_project/css/loginpopup.css">

</head>
<body>

<link href='http://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

<!--  logout popup -->

<div id="login-box" class="login-popup">
<a href="#" class="close"><img  class="btn_close" title="Close Window" alt="Close" /></a>
  <form method="post" class="signin">
        <fieldset class="textbox">
        <label class="logout">
        <span>로그아웃 하시겠습니까?</span>
        <input id="logout" name="logout" value="logout" type="button" autocomplete="on" >
        </label>
       </fieldset>
       </form>
       </div>
        
<script type="text/javascript">

$(document).ready(function(){
    	  
    
 $('#logout').click(function() {
          
      

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
</body>
</html>