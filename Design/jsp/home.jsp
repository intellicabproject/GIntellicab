<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<jsp:include page="include.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><s:text name="intellicab.Home"/></title>
<script type="text/javascript">

</script>
<style type="text/css">

body { 
	/*background-color: #F5F5F5;*/
	background-color: #F0FFFF;
}

.pop-outer{
	background-color:rgba(0,0,0,0.5);
	position:fixed;
	top:0;
	left:0;
	width:100%;
	height:100%;
	display:none;
	
}

.pop-inner{
	background-color:#fff;
	top:10;
	left:500;
	width:700px;
	height:500px;
	padding:25px;
	margin:2% auto;
	
}




      
</style>

<script>
$(document).ready(function(){
	$("#superAdminButton").click(function(){
		$('#superAdminLogin').fadeIn('slow');
	});

	$("#superAdminClose").click(function(){
		$('#superAdminLogin').fadeOut('slow');
	});
	
	$("#superAdminUserButton").click(function(){
		$('#superadminuserslogin').fadeIn('slow');
	});

	$("#superAdminUserClose").click(function(){
		$('#superadminuserslogin').fadeOut('slow');
	});
	 
	$("#AdminUserButton").click(function(){
		$('#adminuserslogin').fadeIn('slow');
	});

	$("#AdminUserClose").click(function(){
		$('#adminuserslogin').fadeOut('slow');
	});
	
	$("#SubAdminUserButton").click(function(){
		$('#subadminuserslogin').fadeIn('slow');
	});

	$("#SubAdminUserClose").click(function(){
		$('#subadminuserslogin').fadeOut('slow');
	}); 	
});




</script>
 
</head>

<body>
<s:form theme="simple">
<div class="container">
   <ul id="nav">
        <li class="current"><a href="#"><s:text name="intellicab.Home"/></a></li>
   </ul>


<br><br><br><br>

<div id="left">
    <div align="center">
		<img src="${pageContext.request.contextPath}/image/taxi.png" alt="TAXI IMAGE" height="200" width="200">
	</div>
</div>

<div id="content">

   <div id="cnt1" align="center">
                   <input type="button" value="Super Admin" class="homebuttoncss" id="superAdminButton"/>
					
					<div class="pop-outer" id="superAdminLogin">
						<div class="login-form-wrap">
						   
						   <div align="right"><input type="button" class="close" value="X" id="superAdminClose"></div>
							<h1> <s:text name="SuperAdmin.Login"/> </h1>
								<s:form class="login-form" action="superAdminlogin!execute.action">
								<input type="text" name="userName" placeholder="Enter UserName" /><br /><br />
								<input type="password" name="password" placeholder="Enter Password"/><br /><br />
								<s:submit value="Login" cssClass="homebuttoncss"/>
								</s:form>
							<h5><a href="#"> Forgot Password</a></h5>
						   
						</div>
					</div> 
					
					<br><br>
					
					<input type="button" value="Super Admin User" class="homebuttoncss" id="superAdminUserButton"/>
					
					<div class="pop-outer" id="superadminuserslogin" >
						<div class="login-form-wrap">
						   
						   <div align="right"><input type="button" class="close" value="X" id="superAdminUserClose"></div>
							<h1> <s:text name="SuperAdmin.userLogin"/></h1>
								<s:form class="login-form" action="superAdminUserlogin!execute.action">
								<input type="text" name="userName" placeholder="Enter UserName" /><br /><br />
								<input type="password" name="password" placeholder="Enter Password"/><br /><br />
								<input type="submit" value="Login" class="homebuttoncss"/>
								</s:form>
							<h5><a href="#"> Forgot Password</a></h5>
						   
						</div>
					</div> 
					<br><br>
					
					
					<input type="button" value=" Admin " class="homebuttoncss" id="AdminUserButton"/>
					
					<div class="pop-outer" id="adminuserslogin" >
						<div class="login-form-wrap">
						   
						   <div align="right"><input type="button" class="close" value="X" id="AdminUserClose"></div>
							<h1> <s:text name="Admin.Login"/> </h1>
								<s:form class="login-form" action="adminLogin!adminLogin.action">
								<input type="text" name="userName" placeholder="Enter UserName" /><br /><br />
								<input type="password" name="password" placeholder="Enter Password"/><br /><br />
								<input type="submit" value="Login" class="homebuttoncss"/>
								</s:form>
							<h5><a href="#"> Forgot Password</a></h5>
						   
						</div>
					</div> 
					<br><br>
					
					
					<input type="button" value=" Sub Admin " class="homebuttoncss" id="SubAdminUserButton"/>
					
					<div class="pop-outer" id="subadminuserslogin" >
						<div class="login-form-wrap">
						   
						   <div align="right"><input type="button" class="close" value="X" id="SubAdminUserClose"></div>
							<h1> <s:text name="SubAdmin.Login"/> </h1>
								<s:form class="login-form" action="subAdminlogin!execute.action">
								<input type="text" name="userName" placeholder="Enter UserName" /><br /><br />
								<input type="password" name="password" placeholder="Enter Password"/><br /><br />
								<input type="submit" value="Login" class="homebuttoncss"/>
								</s:form>
							<h5><a href="#"> Forgot Password</a></h5>
						   
						</div>
					</div> 
		
  		
  	
 
  </div>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<jsp:include page="footer.jsp"></jsp:include>



<br><br>
</div>
</s:form>
</body>
</html>