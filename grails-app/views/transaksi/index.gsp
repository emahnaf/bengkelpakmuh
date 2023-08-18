<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'transaksi.label', default: 'Transaksi')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-transaksi" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-transaksi" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${transaksiList}" />

            <div class="pagination">
                <g:paginate total="${transaksiCount ?: 0}" />
            </div>
        </div>
    <div class="container" id="listtransaksi">
        <table id="tableatransaksi">
            <tr>
                <th>no</th>
                <th>nomor transaksi</th>
                <th>nama pelanggan</th>
                <th>nomor plat</th>
                <th>total durasi</th>
                <th>total harga</th>
                <th>AKSI!!</th>
            </tr>
                <g:set var="count" value="1"/>
            <g:each var="entry" in="${transaksi}">
                <tr>
                    <td>${count}</td>
                    <g:set var="count" value="${count.toInteger() + 1}" />
                    <td>${entry.nomortransaksi}</td>
                    <td>${entry.pelanggan.namapelanggan}</td>
                    <td>${entry.pelanggan.platmobil}</td>
                    <td>${entry.totaldurasi}</td>
                    <td>${entry.totalharga}</td>
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
    </body>
</html>