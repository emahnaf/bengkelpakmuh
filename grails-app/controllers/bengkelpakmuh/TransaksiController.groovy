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
        def transaksi = new Transaksi(params as Map)

        def jasaTerpilih =

        jasaTerpilih.each { id ->
            def jasaInstance = JasaBengkel.get(id)
            transaksi.addToJasabengkels(jasaInstance)
        }

        for (id in jasaTerpilih) {

        }

        if (transaksi) {
            flash.message = "gacor kanggggggg ${params}, ini transaksi ${transaksi}"
            transaksi.save()
            redirect(action: "index")
        }else {
            flash.message = "gjoaoncook ${params}, ini transaksi ${transaksi}"
            render(view: "create", model: [transaksi: transaksi])
        }
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

//        transaksi.nomortransaksi = params.nomortransaksi
        transaksi.totaldurasi=params.totaldurasi
        transaksi.totalharga=params.totalharga
        transaksi.save()

        redirect(action: "index")
    }
}