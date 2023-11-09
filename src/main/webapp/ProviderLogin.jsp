<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
	<f:view>
    <html>
        <h:form id="form">
            <h2>Provider Login</h2>
            <h:outputText value="User Name" />
            <h:inputText id="name" value="#{provider.userName}" />
            <br />
            <br />
            <h:outputText value="Password" />
            <h:inputText id="password" value="#{provider.password}" />
            <br />
            <h:commandButton action="#{providerDao.login(provider)}" value="Login" />
            <h:commandButton type="reset" value="Reset" />
        </h:form>
    </html>
</f:view>

