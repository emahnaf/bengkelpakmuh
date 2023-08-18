<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'jasabengkel.label', default: 'JasaBengkel')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<a href="#list-jasabengkel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="list-jasabengkel" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <f:table collection="${jasabengkelList}" />

    <div class="pagination">
        <g:paginate total="${jasabengkelCount ?: 0}" />
    </div>
</div>
<table id="tablejasabengkel">
    <tr>
        <th>no</th>
        <th>nama jasa</th>
        <th>durasi jasa</th>
        <th>harga jasa</th>
        <th>AKSI!!</th>
    </tr>
    <g:set var="count" value="1"/>
    <g:each var="entry" in="${jasabengkel}">
        <tr>
            <td>${count}</td>
            <g:set var="count" value="${count.toInteger() + 1}" />
            <td>${entry.namajasa}</td>
            <td>${entry.hargaJasa}</td>
            <td>${entry.durasiKerja}</td>
            <td>
                <g:link >
                    <g:link class="delete" action="delete" params="[id:entry.id]">
                        <button>apus aje</button>
                    </g:link>
                    <g:link class="edit" action="edit" params="[id:entry.id]">
                        <button>ngedit</button>
                    </g:link>
                </g:link>
            </td>
        </tr>
    </g:each>
</table>
</body>
</html>