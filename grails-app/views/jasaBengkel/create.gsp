<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'jasabengkel.label', default: 'JasaBengkel')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
%{--        <h1>aloo guyzzz</h1>--}%
%{--        <a href="#create-jasabengkel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
%{--        <div class="nav" role="navigation">--}%
%{--            <ul>--}%
%{--                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
%{--                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
%{--            </ul>--}%
%{--        </div>--}%
%{--        <div id="create-jasabengkel" class="content scaffold-create" role="main">--}%
%{--            <h1><g:message code="default.create.label" args="[entityName]" /></h1>--}%
%{--            <g:if test="${flash.message}">--}%
%{--            <div class="message" role="status">${flash.message}</div>--}%
%{--            </g:if>--}%
%{--            <g:hasErrors bean="${this.jasabengkel}">--}%
%{--            <ul class="errors" role="alert">--}%
%{--                <g:eachError bean="${this.jasabengkel}" var="error">--}%
%{--                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>--}%
%{--                </g:eachError>--}%
%{--            </ul>--}%
%{--            </g:hasErrors>--}%
%{--            <g:form action="save">--}%
%{--                <fieldset class="form">--}%
%{--                    <f:all bean="jasabengkel"/>--}%
%{--                </fieldset>--}%
%{--                <fieldset class="buttons">--}%
%{--                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
%{--                </fieldset>--}%
%{--            </g:form>--}%
            <h1>Create New Jasabengkel</h1>

            <g:form controller="JasaBengkel" action="save">
                <label for="namajasa">nama jasa</label>
                <g:textField name="namajasa" required="true" />
                <br />
                <label for="hargaJasa">hargajasa   </label>
                <g:textField name="hargaJasa" required="true" />
                <br />

                <label for="durasiKerja">durasi kerja     </label>
                <g:textField name="durasiKerja" required="true" />
                <br />
%{--                <g:select name="barangId" from="${barangList}" optionKey="id" optionValue="nama" required="true" />--}%
%{--                <br />--}%
                <g:submitButton name="create" value="Create" />
            </g:form>
        </div>
    </body>
</html>
