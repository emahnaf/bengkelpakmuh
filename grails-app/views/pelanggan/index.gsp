<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'pelanggan.label', default: 'Pelanggan')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-pelanggan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-pelanggan" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${pelangganList}" />

            <div class="pagination">
                <g:paginate total="${pelangganCount ?: 0}" />
            </div>
            <div class="container" id="listpelanggan">
                <table id="tableapelanggan">
                    <tr>
                        <th>no</th>
                        <th>nama pelanggan</th>
                        <th>plat mobil</th>
                        <th>nomor wa</th>
                        <th>AKSI!!</th>
                    </tr>
                    <g:set var="count" value="1"/>
                    <g:each var="entry" in="${pelanggan}">
                        <tr>
                            <td>${count}</td>
                            <g:set var="count" value="${count.toInteger() + 1}" />
                            <td>${entry.namapelanggan}</td>
                            <td>${entry.platmobil}</td>
                            <td>${entry.nomorwa}</td>
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
            </div>
        </div>
    </body>
</html>