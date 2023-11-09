<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
	<f:view>
    <html>
        <h:form id="form">
            <h2>Provider Validate OTP</h2>
            <h:outputText value="User Name" />
            <h:inputText id="name" value="#{provider.userName}" />
            <br />
            <br />
            <h:outputText value="OTP" />
            <h:inputText id="Otp" value="#{provider.otp}" />
            <br />
            <h:commandButton action="#{providerDao.validateOtp(provider)}" value="Validate" />
            <h:commandButton type="reset" value="Reset" />
        </h:form>
    </html>
</f:view>

