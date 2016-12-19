Create Login


$("#btnlogin").click(function(){
        var username=$("#lusername").val();
        var password=$("#lpassword").val();
    $.ajax({
    type: "POST",
    contentType: "application/json; charset=utf-8",
    url: "Service1.asmx/Giris",
    data: "{'kullaniciadi':'"+ username+"' , 'sifre': '"+password+"'}",
    dataType: "json",
    success: function(msg) {
             localStorage.setItem('userInfo', msg.d);
             //Your code here
    }
    
    
    
    
    
   Check Login 
   
   
if(localStorage.getItem('userInfo') == null){
   $.mobile.changePage('login.html');
}











--------------------------Resource -> http://stackoverflow.com/questions/19143763/phonegap-login-page-how-to-keep-user-information
