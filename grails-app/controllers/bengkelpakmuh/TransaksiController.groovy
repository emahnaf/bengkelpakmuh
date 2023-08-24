package bengkelpakmuh

import javax.swing.Spring

class TransaksiController {

    def index() {
        def transaksi = Transaksi.list()
        [transaksi: transaksi]
    }

    def create() {
        def jasabengkelList = JasaBengkel.list()
        def pelangganList = Pelanggan.list()
        def workerList = Worker.list()

        [jasabengkelList: jasabengkelList, pelangganList: pelangganList, workerList: workerList]
    }

    def save() {
        def transaksi = new Transaksi(params as Map)

//      //jasa[1]
//      //jasa[3]
//      //jasa[5]
        //
        //if (jasa[]){
        //
        // }


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
        def jasabengkelList = JasaBengkel.list()
        def pelangganList = Pelanggan.list()
        def workerList = Worker.list()

        [transaksi: transaksi, jasabengkelList: jasabengkelList, pelangganList: pelangganList, workerList: workerList]
    }

    def delete() {
        def delete = Transaksi.get(params.id)
        delete.delete()
        redirect(action: "index")
    }

    def update(){
        def transaksi = Transaksi.get(params.editId)
//      Long pelanggan, int totalharga, int totaldurasi, Long editId, String[] jasabengkels
//      transaksi.nomortransaksi = params.nomortransaksi
        def pelan = Pelanggan.get(params.pelanggan)
        def wor = Worker.get(params.workers)
        transaksi.jasabengkels.clear()
        transaksi.workers.clear()


        for(x in params.jasabengkels) {
            def jas = JasaBengkel.get(x)
            if(jas) {
                transaksi.addToJasabengkels(jas)
                transaksi.save()
            }
        }
            transaksi.addToWorkers(wor)
            transaksi.totaldurasi = params.totaldurasi as Integer
            transaksi.totalharga = params.totalharga as Integer
            transaksi.pelanggan = pelan

        redirect(action: "index")
    }
}