package bengkelpakmuh

class Transaksi {

//    Jasabengkel idjasa
//    Pelanggan idpelanggan
    String nomortransaksi
    int Totalharga
    int totaldurasi

    static belongsTo = [pelanggan: Pelanggan]
    static hasMany = [workers: Worker, services: Jasabengkel]
    static constraints = {
    }
}
