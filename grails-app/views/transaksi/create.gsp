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
            <g:select name="pelanggan" from="${pelangganList}" optionKey="id" optionValue="namapelanggan" required="true" />
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
                            checked="false" />
            </div>
        </g:each>

        <g:hiddenField name="totalharga" value="aselole"/>
        <g:hiddenField name="totaldurasi" value="aselole"/>
        <div>
            <label>Total Durasi:</label>
            <span id="totalDurasi">0.00 jam</span>
            <label>Total Harga:</label>
            <span id="totalHarga">Rp. 0.00 </span>
        </div>
        <h1>pilih worker</h1>
        <g:select name="workers" from="${workerList}" optionKey="id" optionValue="namaWorker" required="true" />
        <br>
        <g:submitButton name="create" value="gasssss"/>
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


