<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'jasabengkel.label', default: 'Jasabengkel')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
    <h1>ini anaf</h1>
        <a href="#edit-jasabengkel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-jasabengkel" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.jasabengkel}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.jasabengkel}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.jasabengkel}" method="PUT">
                <g:hiddenField name="version" value="${this.jasabengkel?.version}" />
                <fieldset class="form">
                    <f:all bean="jasabengkel"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>

            <h1>ngeditt Jasabengkel</h1>

            <g:form controller="JasaBengkel" action="update">
                <g:hiddenField name="editId" value="${jasabengkel.id}"/>
                <label for="namajasa">nama jasa</label>
                <g:textField name="namajasa" required="true" value="${jasabengkel.namajasa}"/>
                <br />
                <label for="hargaJasa">hargajasa   </label>
                <g:textField name="hargaJasa" required="true" value="${jasabengkel.hargaJasa}"/>
                <br />

                <label for="durasiKerja">durasi kerja     </label>
                <g:textField name="durasiKerja" required="true" value="${jasabengkel.durasiKerja}"/>
                <br />
            %{--                <g:select name="barangId" from="${barangList}" optionKey="id" optionValue="nama" required="true" />--}%
            %{--                <br />--}%
                <g:submitButton name="update" value="update" />
            </g:form>
        </div>
    </body>
</html>
