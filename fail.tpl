%#template for Failed message



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
     background-color:#666666;
    

     background-attachment : scroll;
     background-size : 100% auto;
}
.blended_grid{
     display : block;
     width : 900px;
     overflow : auto;
     margin : 30px auto 0 auto;
}
.pageHeader{
   background-image : url( 'http://www.willamette.edu/dept/llc/images/headers/01.gif');
     background-repeat: no-repeat;
     background-size: 900px 200px;
  

     float : left;
     clear : none;
     height : 200px;
     width : 900px;
}
.pageLeftMenu{
     
      background-color :#CDAAD9;

     float : left;
     clear : none;
     height : 55px;
     width : 900px;
     border: 6px;
}
.pageContent{
     background-color :     #CCCC9A; 
    
     
     float : left;
     clear : none;
     height : 500px;
     width : 900px;
     padding-left: 10px;

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
<!-- ............................................................................-->

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
<!-- ............................................................................-->


      <div class="pageLeftMenu">
       <br>
         
        <form action="/login" method="post" align="center">

            <b> Admin Username:</b> <input name="username" type="text"  />
            <b>Admin Password:</b> <input name="password" type="password" />
           
            <input value="Reset" type="reset" style="color:#111111;border-radius:4px; width:80px; height:20px; background-color:#FFFFFF;"/>
            <input value="Login" type="submit" style="color:#111111;border-radius:4px; width:80px; height:20px; background-color:#FFFFFF;"/>
           
        </form>
      </div>
<!-- ............................................................................-->
   




<!-- ............................................................................-->
      <div class="pageContent">
        <br><br>

        <h3  align="center" style="font-size:35px;text-shadow:2px 2px 2px #666;color:#6B008F;"> Login Failed!! <br> Check your username or password and try again</h3>



</form>




      </div>

<!-- ............................................................................-->
     <div class="pageFooter">
        <br>
      <h4 align="center" style= color:white> For Software Engineering Methodology Course </h4> 
      
      <h4 align="center" style= color:white> Developed by Frozen Squirrels  </h4> 
      
      <h4 align="center" style= color:white> © All right reserved   </h4> 
      </div>
</div>
</body>
</html>
