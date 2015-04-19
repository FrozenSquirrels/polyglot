<!-- .................................................................................-->


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
     width : 1200px;
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
.pageLeftMenu{
     
      background-color :  #333333;

     float : left;
     clear : none;
     height : 55px;
     width : 900px;
     border: 6px;
}
.table, th, td {
    border: 4px solid black;
    font-size:2;
    text-align: center;
    table-layout : center;
    background-color :#FFFFC2;
    float : center;
    }
.pageContent{
     background-color :     #CCCC9A; 
    
     
     float : left;
     clear : none;
     height : 700px;
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

 <title>Home</title>
     <meta name="description" content="* WELCOME TO The LEARNING WEBSITE *">

</head>
<body>
  
<div class="blended_grid">
      <div class="pageHeader">
        <br><br>
                <h1 align="center" style="font-size:35px;text-shadow:3px 3px 3px #666;color:#6B008F;">  </h1>

        
        <br><br>
        <!-- <font face="Arial ,Tahoma" size="5" color="#234789">
            <br><br>
            <marquee bgcolor="#FFFFF1" direction="right"> welclksdhfd </marquee>
        </font> -->
      </div>
<!-- ............................................-->


      <div class="pageLeftMenu">
       <br>
         
        <form action="/login" method="post" align="center">

            <b> Admin Username:</b> <input name="username" type="text"  />
            <b>Admin Password:</b> <input name="password" type="password" />
           
            <input value="Reset" type="reset" style="color:#111111;border-radius:4px; width:80px; height:20px; background-color:#FFFFFF;"/>
            <input value="Login" type="submit" style="color:#111111;border-radius:4px; width:80px; height:20px; background-color:#FFFFFF;"/>
           
        </form>
      </div>
<!-- ............................................-->
   



<!-- ............................................-->
      <div class="pageContent">
       
<br>
 <h1 align="center" style="font-size:35px;text-shadow:3px 3px 3px #666;color:#990033">  Welcom {{name}} </h1>

           
<br>

<table  border="0">
  
  <tr >
    
    <th>
            <button style="color:white;border-radius: 30px/10px; width:160px; height:40px; background: #686868" onClick="window.location='/login/insert'"><b>INSERT New Word </b></button>

   

</th>
</tr>
<br><br><br><br>
<tr>
  
  <td>
<table  border="2"  >
  <tr bgcolor="#990033"><th> Edit </th><th> Delete </th><th>English </th><th>  Hindi  </th>
%for row in row:
  <tr bgcolor="#990033">
    <td><a href="/project/edit/{{row[0]}}">Edit </a></td>
    <td><a href="/project/delete/{{row[0]}}">Delete </a></td>
  %for col in row[1:]:
    <td>{{col}}</td>
  %end
  </tr>
%end
</table>


</td>
</tr>
</table>

<br><br>
  
</div>
<!-- ............................................-->
    <div class="pageFooter">
        <br>
      <h4 align="center" style= color:white> For Software Engineering Methodology Course </h4> 
      
      <h4 align="center" style= color:white> Developed by Frozen Squirrels  </h4> 
      
      <h4 align="center" style= color:white> © All right reserved   </h4> 
      </div>

</body>
</html>





















