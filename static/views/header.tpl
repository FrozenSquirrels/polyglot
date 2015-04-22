<!DOCTYPE html>
<html>
<head>
<style>    
*{
     padding : 0;
     margin : 0;
     border : 0;
}
body{
    
    background-color :#889B9C;

    background-attachment : scroll;
     background-size : 100% auto;

}
.blended_grid{
     display : block;
     width : 900px;
/*    overflow : auto; */
     margin : 30px auto 0 auto;
}
.pageHeader{
     
     background-image : url( 'http://www.willamette.edu/dept/llc/images/headers/01.gif');
     background-repeat: no-repeat;
     background-size: 900px 200px;
  

     float : left;
     clear : none;
     height : 200px;
     width : 1000px;
}
.nav {
     
      background-color :  #333333;

     float : left;
     clear : none;
     height : 55px;
     width : 900px;
     border: 6px;
}
.pageContent{
     background-color :     #B9BEBF; 
    
    background-repeat: repeat;
     
     float : left;
     clear : none;
     minHeight : 500px;
     width : 900px;
     padding-left: 10px;

}
.navMENU{
   
     background-color : rgba(254,247,255,0.8); 
     height : 500px;
}
.navMENU ul {

}
.navMENU ul li {
     list-style-type :none; 
      width : 175px;
      float : left;
      border-right: 2px solid #ccc;
      text-align: center;
}
.navMENU li a {
     text-denoration: none;
     color: black;
     line-height: 50px;
     display: block;

}
.navMENU li a:hover {
    background-color: #990033;
}

     
    
.pageFooter{
   
     background-color : #333333;

     float : left;
     clear : none;
     height : 100px;
     width : 900px;
     
     
}

.image {
   content:url(c1.jpg);
}​



</style>





 <title>Home</title>
     <meta name="description" content="* WELCOME TO The LEARNING WEBSITE *">

</head>
<body>
  
<div class="blended_grid">
      <div class="pageHeader">
        <br><br>
                <h1 align="center" style="font-size:35px;text-shadow:3px 3px 3px #666;color:#6B008F;">   </h1>

        
        <br><br>
        
      </div>

<div class="nav">
<br>
         
        <form action="/login" method="post" align="center" color: "#FFFFFF">

            <b> Admin Username:</b> <input name="username" type="text"  />
            <b>Admin Password:</b> <input name="password" type="password" />
           
            <input value="Reset" type="reset" style="color:#111111;border-radius:4px; width:80px; height:20px; background-color:#FFFFFF;"/>
            <input value="Login" type="submit" style="color:#111111;border-radius:4px; width:80px; height:20px; background-color:#FFFFFF;"/>
           
        </form>
</div>
<!------------------------------------>
  <div class="pageLeftMenu">
  </div>
<!------------------------------------>
   
  <div class = "navMENU" >
  <ul>
    <li><a id="home" href="/">Home </a></li> 
    <li><a href="/aboutus">About Us</a></li> 
    <li><a href="/dataset" >Learn with us</a></li>
    <li><a id='contact_us_link' href="/contactus">Contact Us</a></li>
    <li><a href="/practice">Practice </a></li> 
  </ul>  
<br>

<script src="Script.js"></script>



<!------------------------------------>


<!--Reem Edit FaceBook login + like + share button-->

<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '383383411870328',
      xfbml      : true,
      version    : 'v2.3'
    });
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>

<div 
  class="fb-like"
  data-share="true"
  data-width="450"
  data-show-faces="true">
</div>


<script>
  // This is called with the results from from FB.getLoginStatus().
  function statusChangeCallback(response) {
    console.log('statusChangeCallback');
    console.log(response);
    // The response object is returned with a status field that lets the
    // app know the current login status of the person.
    // Full docs on the response object can be found in the documentation
    // for FB.getLoginStatus().
    if (response.status === 'connected') {
      // Logged into your app and Facebook.
      testAPI();
    } else if (response.status === 'not_authorized') {
      // The person is logged into Facebook, but not your app.
      document.getElementById('status').innerHTML = 'Please log ' +
        'into this app.';
    } else {
      // The person is not logged into Facebook, so we're not sure if
      // they are logged into this app or not.
      document.getElementById('status').innerHTML = 'Please log ' +
        'into Facebook.';
    }
  }

  // This function is called when someone finishes with the Login
  // Button.  See the onlogin handler attached to it in the sample
  // code below.
  function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });
  }

  window.fbAsyncInit = function() {
  FB.init({
    appId      : '383383411870328',
    cookie     : true,  // enable cookies to allow the server to access 
                        // the session
    xfbml      : true,  // parse social plugins on this page
    version    : 'v2.2' // use version 2.2
  });

  // Now that we've initialized the JavaScript SDK, we call 
  // FB.getLoginStatus().  This function gets the state of the
  // person visiting this page and can return one of three states to
  // the callback you provide.  They can be:
  //
  // 1. Logged into your app ('connected')
  // 2. Logged into Facebook, but not your app ('not_authorized')
  // 3. Not logged into Facebook and can't tell if they are logged into
  //    your app or not.
  //
  // These three cases are handled in the callback function.

  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });

  };

  // Load the SDK asynchronously
  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));

  // Here we run a very simple test of the Graph API after login is
  // successful.  See statusChangeCallback() for when this call is made.
  function testAPI() {
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me', function(response) {
      console.log('Successful login for: ' + response.name);
      document.getElementById('status').innerHTML =
        'Thanks for logging in, ' + response.name + '!';
    });
  }
</script>

<!--
  Below we include the Login Button social plugin. This button uses
  the JavaScript SDK to present a graphical Login button that triggers
  the FB.login() function when clicked.
-->

<fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
</fb:login-button>

<div id="status">
</div>



<!--Reem Edit FaceBook login + like + share button-->



<!-- page content ---------------------------------->

