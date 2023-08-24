<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'transaksi.label', default: 'Transaksi')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-transaksi" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-transaksi" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.transaksi}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.transaksi}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.transaksi}" method="PUT">
                <g:hiddenField name="version" value="${this.transaksi?.version}" />
                <fieldset class="form">
                    <f:all bean="transaksi"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    <g:form controller="Transaksi" action="update">
        <h1>halaman update</h1>
        <h1>pilih pelanggan</h1>
%{--        <h1>${transaksi.pelanggan.id}</h1>--}%
        <g:select name="pelanggan" from="${pelangganList}" optionKey="id" optionValue="namapelanggan" required="true" value="${transaksi.pelanggan.id}" />
        <h1>pilihhh apa mau na bikin ke ini bengkel</h1>

    %{--        <g:select name="jasabengkels" from="${jasabengkelList}" optionKey="id" multiple="yes" optionValue="namajasa" />--}%

        <g:each in="${jasabengkelList}" var="jasa">
            <div>
                <label>${jasa.namajasa}</label>
                %{--                <g:hiddenField name="jasa[${jasa.id}].id" value="${jasa.id}" />--}%
                %{--                <g:hiddenField name="jasa[${jasa.id}].durasiKerja" value="${jasa.durasiKerja}" />--}%
                <g:checkBox name="jasabengkels"
                            data-durasiKerja="${jasa.durasiKerja}"
                            data-totalHarga="${jasa.hargaJasa}"
                            value="${jasa.id}"
                            onclick="updateTotal()"
                            checked="${transaksi.jasabengkels.id.contains(jasa.id)}" />
            </div>
        </g:each>

        <p>${transaksi.jasabengkels}</p>

        <g:hiddenField name="totalharga" value="aselole"/>
        <g:hiddenField name="totaldurasi" value="aselole"/>
        <div>
            <label>Total Durasi:</label>
            <span id="totalDurasi">0.00 jam</span>
            <label>Total Harga:</label>
            <span id="totalHarga">Rp. 0.00 </span>
        </div>
        <g:hiddenField name="editId"
            value="${transaksi.id}"/>
        <h1>pilih worker</h1>
        <g:select name="workers" from="${workerList}" optionKey="id" optionValue="namaWorker" required="true" value="${transaksi.pelanggan.id}" />
        <h1>pilihhh apa mau na bikin ke ini bengkel</h1>

        <g:submitButton name="update" value="gasssss"/>
    </g:form>
    <script>
        function updateTotal() {
            const checkboxes = document.querySelectorAll('input[type="checkbox"]');
            let totalDurasi = 0;
            let totalHarga = 0;

            checkboxes.forEach(checkbox => {
                if (checkbox.checked) {
                    var durasi = checkbox.getAttribute('data-durasiKerja');
                    var harga = checkbox.getAttribute('data-totalHarga');

                    totalDurasi += parseFloat(durasi);
                    totalHarga += parseFloat(harga);
                }
            });

            document.getElementById('totalDurasi').textContent = totalDurasi.toFixed(2) + ' jam';
            document.getElementById('totalHarga').textContent = 'Rp.'+ totalHarga.toFixed(2) ;
            const inputDurasi = document.querySelectorAll('input[name=totaldurasi]');
            const inputHarga = document.querySelectorAll('input[name=totalharga]');
            inputDurasi.forEach(x => x.value = totalDurasi);
            inputHarga.forEach(x => x.value = totalHarga);
        }
    </script>


    </body>
</html>
