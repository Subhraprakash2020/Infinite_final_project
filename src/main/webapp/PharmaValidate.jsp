<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
	<f:view>
    <html>
        <h:form id="form">
            <h2>Validate OTP</h2>
            <h:outputText value="Email Id" />
            <h:inputText id="name" value="#{pharma.email}" />
            <br />
            <br />
            <h:outputText value="OTP" />
            <h:inputText id="Otp" value="#{pharma.otp}" />
            <br />
            <h:commandButton action="#{pharmaDao.validateOtp(pharma)}" value="Validate" />
            <h:commandButton type="reset" value="Reset" />
        </h:form>
    </html>
</f:view>

