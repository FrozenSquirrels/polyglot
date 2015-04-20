% include('header.tpl')

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


% include('footer.tpl')















