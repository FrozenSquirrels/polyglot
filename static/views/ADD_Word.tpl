% include('header.tpl')

<!------------------------------------>
      <div class="pageContent">
        <br><br>

        
              <h2>Add a new word to the dataset:</h2>

<form action="/login/insert" method="POST">


<table>

<tr><th align="left">English: </th><th align="left"><input type="text"  size="60" maxlength="100" name="English" ></th> </tr>
<tr><th align="left"> Hindi: </th><th align="left"><input type="text"  size="10" maxlength="10" name="Hindi"></th> </tr>

</table>


<br><br><br>

<button <type="submit" value="save"><b>Insert new Word</b></button> 
<button type="reset" value="Reset"><b>Reset</b></button> 
</form>





      </div>

% include('footer.tpl')





















  
