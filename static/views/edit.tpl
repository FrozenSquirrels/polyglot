% include('header.tpl')

<!-- ......................................... -->
  <div class="pageContent">
        <br><br>

        
                  
<p> The Id of your target = {{item}}</p>

<form action="/edit/{{item}}" method="post">
  <table>

<tr><th align="left"> English: </th><th align="left"><input type="text" name="English" value="{{r1}}" size="100" maxlength="100"></th> </tr>
<tr><th align="left">Hindi: </th><th align="left"><input type="text" name="Hindi" value="{{r2}}" size="100" maxlength="100"></th> </tr>


</table>

<br><br>

<input value="save" type="submit" name="save" style="color:#FFFFFF;border-radius:4px; width:90px; height:30px; background-color:black;" algin="center"/>


</form>




      </div>

% include('footer.tpl')


































