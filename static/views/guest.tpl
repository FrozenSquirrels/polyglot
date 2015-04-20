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
     height : 500px;
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
      width : 222px;
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
<body>
</head>
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
            <b> Admin Password:</b> <input name="password" type="password" />
           
            <input value="Reset" type="reset" style="color:#111111;border-radius:4px; width:80px; height:20px; background-color:#FFFFFF;"/>
            <input value="Login" type="submit" style="color:#111111;border-radius:4px; width:80px; height:20px; background-color:#FFFFFF;"/>
           
        </form>
</div>
<!-- ..........
<!-- ....................................................-->
   

 <div class="pageLeftMenu">
       
      </div>
<!------------------------------------>
   



<div class = "navMENU" >
<ul>
    <li><a href="/aboutus"> About Us</a></li> 
   
    <li><a href="/dataset" > Guest Enter</a></li>
    <li><a href="/contactus"> Contact Us</a></li>
    <li><a href="#"> Practice </a></li> 


</ul>  

<script src="Script.js"></script>



<!-- ....................................................-->
      <div class="pageContent">
       
<br>



<table width= "300" border="2" >
<col text-align="center"; width="60">
<col width="50">
<col width="60">
<col width="80">
<col width="80">
<col width="50">
<col width="60">
<col width="80">
<col width="60">
<col width="80">
<col width="60">
<col width="60">
<col width="60">
<col width="60">
<col width="60">
  <tr style="color:#FFFFCC"><th  > English </th><th>  Hihdi </th>
%for row in row:
  <tr>
  %for col in row:
    <td>{{col}}</td>
  %end
  </tr>
%end

</table>




<br>
<h2 align="center"><a href="/dataset" >Go To the top</a></h2>


<br>

        
</div>


  <div class="pageFooter">
        <br>
      <h4 align="center" style= color:white> For Software Engineering Methodology Course </h4> 
      
      <h4 align="center" style= color:white> Developed by Frozen Squirrels  </h4> 
      
      <h4 align="center" style= color:white> © All right reserved   </h4> 
      </div>

</body>
</html>















