<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
.mySlides {display:none;}

input[type="text"], input[type="mail"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
}
</style>
</head>
<body>

<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
  <div class="header-right">
    <a class="active" href="index.jsp">Home</a>
    <a href="adminLogin.jsp">Admin Login</a>
  </div>
</div>

<div style="max-width:100%">
  <img class="mySlides"  src="slide1.jpg" >
  <img class="mySlides"  src="slide2.png" >
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>


<body>
  <br>
  <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
	  %>
	  <center><font color="blue" size="6">Form  Submitted Successfully.You will get notified within 2hrs.If urgent re-contact us.</font></center>
	  <%
  }
  %>
  <%
  if("invalid".equals(msg))
  {
	  %>
	  <center><font color="orange" size="6">In-valid data given!.Try again></font></center>
	  <%
  }
  %>
  <center><h1>Enter your Details to Request for Blood </h1></center>
  <form action="indexFormAction.jsp"method="post">
  <center>
  <input type="text" name="name" placeholder="Enter Name" required>
  <input type="text" name="mobilenumber" placeholder="Enter your mobile number" required>
  <input type="mail" name="e-mail" placeholder="Enter your E-Mail Address" required>
  <input type="text" name="bloodgroup"placeholder="Enter Blood Group" required">
  <button class="button1"><span>SUBMIT</span></button>
  </center>
  </form>
 
 
 
 
 
 
  <br>
  <br>
  </div>
</div>

<div class="row1"> 
<div class="container"> 
<br>         
<br>
    </tbody>
  </table>
</div>
</div>
<h3><center>All Right Reserved @ NRJ Blood Bank (by rahul):: Since-2003  </center></h3>

</body>
</html>

