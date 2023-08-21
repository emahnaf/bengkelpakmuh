<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'transaksi.label', default: 'Transaksi')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
    <g:if test="${flash.message}">
        <div class="message" role="status">
            ${flash.message}
        </div>
    </g:if>
    <g:form controller="Transaksi" action="save">
        <h1>pilih pelanggan</h1>
            <g:select name="pelanggan" from="${pelangganList}" optionKey="id" optionValue="namapelanggan" required="true" noSelection="['null':'siapa itu']"/>
        <h1>pilihhh apa mau na bikin ke ini bengkel</h1>

%{--        <g:select name="jasabengkels" from="${jasabengkelList}" optionKey="id" multiple="yes" optionValue="namajasa" />--}%

        <g:each in="${jasabengkelList}" var="jasa">
            <div>
                <label>${jasa.namajasa}</label>
%{--                <g:hiddenField name="jasa[${jasa.id}].id" value="${jasa.id}" />--}%
%{--                <g:hiddenField name="jasa[${jasa.id}].durasiKerja" value="${jasa.durasiKerja}" />--}%
                <g:checkBox name="jasa[${jasa.id}]"
                            data-durasiKerja="${jasa.durasiKerja}"
                            data-totalharga="${jasa.hargaJasa}"
                            value="true"
                            onclick="updateTotal()"
                            checked="false" />
            </div>
        </g:each>

        <div>
            <label>Total Durasi:</label>
            <span id="totalDurasi">0.00 jam</span>
            <label>Total Harga:</label>
            <span id="totalharga">Rp. 0.00 </span>
        </div>

        <g:submitButton name="create" value="gasssss"/>
    </g:form>
    <script>
        function updateTotal() {
            const checkboxes = document.querySelectorAll('input[type="checkbox"]');
            let totalDurasi = 0;
            let totalharga = 0;

            checkboxes.forEach(checkbox => {
                if (checkbox.checked) {
                    var durasi = checkbox.getAttribute('data-durasiKerja');
                    var harga = checkbox.getAttribute('data-totalharga');

                    totalDurasi += parseFloat(durasi);
                    totalharga += parseFloat(harga);
                }
            });

            document.getElementById('totalDurasi').textContent = totalDurasi.toFixed(2) + ' jam';
            document.getElementById('totalharga').textContent = 'Rp.'+ totalharga.toFixed(2) ;

        }
    </script>
        </div>

    </body>

</html>
