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

        [transaksi: transaksi, jasabengkelList: jasabengkelList, pelangganList: pelangganList]
    }

    def delete() {
        def delete = Transaksi.get(params.id)
        delete.delete()
        redirect(action: "index")
    }

    def update(){
        def transaksi = Transaksi.get(params.editId)

//        transaksi.nomortransaksi = params.nomortransaksi
        transaksi.totaldurasi=params.totaldurasi to Integer
        transaksi.totalharga=params.totalharga to Integer
        transaksi.save()

        redirect(action: "index")
    }
}