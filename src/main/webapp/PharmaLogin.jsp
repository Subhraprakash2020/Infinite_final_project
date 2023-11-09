<%@page contentType="text/html" %>
<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<f:view>
<html>
<head>
   <link rel="stylesheet" href="style.css">
 </head>
<body>
    <div class="register">
        <div class="content">
            <div class="register__container-log">
                <h:form id="form">
                    <div class="register__login-form">
                        <h2>Login</h2>
                        <h:outputText value="Email Id" />
                        <label for="name1" class="login-form__label login-form__label--one login-form__input">
                            <h:inputText id="name1" value="#{pharma.email}" style="
                        background-color: #1e1e1f" />
                        </label>
                        <h:outputText value="Password" />
                        <label for="password" class="login-form__label login-form__label--two login-form__input" >
                            <h:inputSecret id="password" value="#{pharma.password}" style="
                        background-color: #1e1e1f"/>
                        </label>
                        <br />
                        
                         <h:commandButton action="#{pharmaDao.loginDao(pharma)}" value="Login" style="background-color: green;
    padding: 10px;
    width: 43%;
    border-radius: 12px;"/>
                        
                        <h:commandButton type="reset" value="Reset" style="    background-color: #1999DB;
    border-radius: 15px;
    padding: 10px;
    width: 21%;"/>
                        <h:outputText value="#{passWordErr}"/>
                    </div>
                </h:form>
            </div>
        </div>
    </div>
</body>
</html>
</f:view>
