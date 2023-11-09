<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
	<h:form>
		<h2 style="text-align: center" class="col-sm-4">SignUp Admin</h2>
		Admin Name:
		<h:inputText id="cusName" value="#{admin.name}" />
		<br></br>
		Admin email:
		<h:inputText id="cusPhn" value="#{admin.email }" />
		<br></br>
		UserName:
		<h:inputText id="cusUser" value="#{admin.username }" />
		<br></br>
		Password:
		<h:inputText id="cusPass" value="#{admin.password}" />
	
		<br></br>
		<h:commandButton value="SignUp" action="#{adminDao.adminSignIn(admin)}"  />
	</h:form>


</body>
	</html>
</f:view>