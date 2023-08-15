<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'transaksi.label', default: 'Transaksi')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
%{--        <a href="#create-transaksi" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
%{--        <div class="nav" role="navigation">--}%
%{--            <ul>--}%
%{--                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
%{--                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
%{--            </ul>--}%
%{--        </div>--}%
%{--        <div id="create-transaksi" class="content scaffold-create" role="main">--}%
%{--            <h1><g:message code="default.create.label" args="[entityName]" /></h1>--}%
%{--            <g:if test="${flash.message}">--}%
%{--            <div class="message" role="status">${flash.message}</div>--}%
%{--            </g:if>--}%
%{--            <g:hasErrors bean="${this.transaksi}">--}%
%{--            <ul class="errors" role="alert">--}%
%{--                <g:eachError bean="${this.transaksi}" var="error">--}%
%{--                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>--}%
%{--                </g:eachError>--}%
%{--            </ul>--}%
%{--            </g:hasErrors>--}%
%{--            <g:form action="save">--}%
%{--                <fieldset class="form">--}%
%{--                    <g:all bean="transaksi"/>--}%
%{--                </fieldset>--}%
%{--                <fieldset class="buttons">--}%
%{--                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
%{--                </fieldset>--}%
%{--            </g:form>--}%

            <g:form controller="Transaksi" action="save">
%{--                <label for="namajasa">nama jasa</label>--}%
%{--                <g:textField name="namajasa" required="true" />--}%
%{--                <br />--}%
%{--                <label for="hargaJasa">hargajasa   </label>--}%
%{--                <g:textField name="hargaJasa" required="true" />--}%
%{--                <br />--}%

%{--                <label for="durasiKerja">durasi kerja     </label>--}%
%{--                <g:textField name="durasiKerja" required="true" />--}%
%{--                <br />--}%
                <g:select name="pelanggan" from="${pelangganList}" optionKey="id" optionValue="namapelanggan" required="true" />
                <br />
%{--            <g:select name="jasa" from="${jasabengkelList}" optionKey="id" optionValue="namajasa" required="true" />--}%
%{--            <br />--}%
%{--                <g:select name="jasa[]" from="${jasabengkelList}" optionKey="id" optionValue="namajasa" multiple="true" required="true" />--}%
%{--                <br />--}%
                <label>Pilih Jasa:</label>
                <g:each in="${jasabengkelList}" var="jasa">
                    <div>
                        <g:checkBox name="jasa" value="${jasa.id}" checked="${false}" /> ${jasa.namajasa}
                    </div>
                </g:each>


                <g:submitButton name="create" value="Create" />
            </g:form>
        </div>
    </body>
</html>
