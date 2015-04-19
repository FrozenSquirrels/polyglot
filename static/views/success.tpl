%#template for view after success update


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
     background-image : url('https://d1zqayhc1yz6oo.cloudfront.net/s/feel_resources/modern2/backgrounds/images/zzz-legacy-wood.jpg?_v=1');

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
     background-color : rgba(237,253,27,0.6);
     background-image : url('http://www.silverytweedcereals.co.uk/template_images/1.jpg');
     background-repeat: no-repeat;
     background-size: 900px 350px;
  

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
     background-color : rgba(254,247,255,0.8); 
    
     
     float : left;
     clear : none;
     height : 500px;
     width : 900px;
     padding-left: 10px;

}
.pageFooter{
   
     background-color :#CDAAD9;

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
                <h1 align="center" style="font-size:35px;text-shadow:3px 3px 3px #666;color:#6B008F;">  Welcome  </h1>

        
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

        <h3  align="center" style="font-size:35px;text-shadow:2px 2px 2px #666;color:#6B008F;"> Your target item with ID = {{item}}  was successfully updated or deleted</h3>
<br><br><br><a href="/project/dataset"><h4> See the data after update (Edit or Delete)...</h4></a> 



</form>




      </div>

<!-- ............................................................................-->
      <div class="pageFooter">
        <br>
      <h4 align="center"> For Software Engineering Methodology Course </h4> 
      
      <h4 align="center"> Developed by Frozen Squirrels </h4> 
      
      <h4 align="center"> © All right reserved   </h4> 
      </div>
</div>
</body>
</html>
