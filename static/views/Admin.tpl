% include('header.tpl')
       
 <div class="pageContent">
       
<br>
 <h1 align="center" style="font-size:35px;text-shadow:3px 3px 3px #666;color:#FFFFFF">  Welcome {{name}} </h1>
<table  border="0">
  <tr >
    <th>
            <button style="color:white;border-radius: 20px/10px; width:200px; height:40px; background: #686868" onClick="window.location='/login/ADD_Word'"><b>INSERT New Word </b></button>

    </th>
  </tr>
  
  <td>
<table width= "300" border="2"  >
  <tr bgcolor="#FFFFFF"><th> Edit </th><th> Delete </th><th>English </th><th>  Hindi  </th>
%for row in row:
  <tr bgcolor="#FFFFCC">
    <td><a href="/edit/{{row[0]}}">Edit </a></td>
    <td><a href="/delete/{{row[0]}}">Delete </a></td>
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

% include('footer.tpl')
