package bengkelpakmuh

class TransaksiController {

    def index() { }
    def create(){
        def jasa = JasaBengkel.findAll()
        def pelanggan = Pelanggan.findAll()
        render(view: "create", model: [jasabengkelList: jasa, pelangganList: pelanggan, newTransaksi: new Transaksi()])
//        render(view: "create", model: [pelangganList: pelanggan, newTransaksi: new Transaksi()])
    }



}
