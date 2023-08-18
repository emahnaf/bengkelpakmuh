package bengkelpakmuh

class TransaksiController {

    def index() {
        def transaksi = Transaksi.list()
        [transaksi: transaksi]
    }

    def create() {
        def jasabengkelList = JasaBengkel.list()
        def pelangganList = Pelanggan.list()

        [jasabengkelList: jasabengkelList, pelangganList: pelangganList]
    }

    def save() {

        def selectedJasaItems = params.findAll { key, value -> key.startsWith("jasa[") && value.selected == "true" }
        def totalDurasi = selectedJasaItems.collect { it.value.durasiKerja.toFloat() }.sum()

        // ... other processing and saving Transaksi data

        redirect action: "create"
    }

    def edit(Long id) {
        def transaksi = Transaksi.get(id)
        [pelanggan: transaksi]
    }

    def delete() {
        def delete = Transaksi.get(params.id)
        delete.delete()
        redirect(action: "index")
    }

    def update(){
        def transaksi = Transaksi.get(params.editId)

        transaksi.nomortransaksi = params.nomortransaksi
        transaksi.totaldurasi=params.totaldurasi
        transaksi.totalharga=params.totalharga
        transaksi.save()

        redirect(action: "index")
    }
}