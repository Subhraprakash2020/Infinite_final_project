<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
	<f:view>
    <html>
        <h:form id="form">
            <h2>Admin Login</h2>
            <h:outputText value="User Name" />
            <h:inputText id="name" value="#{admin.username}" />
            <br />
            <br />
            <h:outputText value="Password" />
            <h:inputText id="password" value="#{admin.password}" />
            <br />
            <h:commandButton action="#{adminDao.loginDao(admin)}" value="Login" />
            <h:commandButton type="reset" value="Reset" />
        </h:form>
    </html>
</f:view>

