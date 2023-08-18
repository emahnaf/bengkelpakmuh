<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'pelanggan.label', default: 'Pelanggan')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-pelanggan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-pelanggan" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.pelanggan}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.pelanggan}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
%{--            <g:form action="save">--}%
%{--                <fieldset class="form">--}%
%{--                    <g:all bean="pelanggan"/>--}%
%{--                </fieldset>--}%
%{--                <fieldset class="buttons">--}%
%{--                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
%{--                </fieldset>--}%
%{--            </g:form>--}%
            <h1>Create New Pelanggan</h1>

            <g:form controller="Pelanggan" action="save">
                <label for="namapelanggan">nama pelanggan:</label>
                <g:textField name="namapelanggan" required="true" />
                <br />
                <label for="platmobil">plat mobil:    </label>
                <g:textField name="platmobil" required="true" />
                <br />
                <label for="nomorwa">nomor wa:     </label>
                <g:textField name="nomorwa" required="true" />
                <br />
                <g:submitButton name="create" value="create" />
            </g:form>
        </div>
    </body>
</html>
