% include('header.tpl')
<!-- ......................................... -->
      <div class="pageContent">
        <br><br><br>



  <form action="/delete/{{item}}" method="post" align="center">
    <br><br>
    <h2 align="center" style="font-size:35px;text-shadow:3px 3px 3px #666;color:#6B008F;">   Your target data= {{item}} </h2> <br><br>

    <input type="submit" name="save" value="Delete this document" style="color:#111111;border-radius:4px; width:200px; height:50px;  background-color:#CDAAD9; "/> 
    <br>

    </form>
      </div>

% include('footer.tpl')
