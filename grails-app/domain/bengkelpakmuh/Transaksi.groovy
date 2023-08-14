package bengkelpakmuh

class Transaksi {

//    Jasabengkel idjasa
//    Pelanggan idpelanggan
    String nomortransaksi
    int totalharga
    int totaldurasi
    Pelanggan pelanggan

    static belongsTo = [pelanggan: Pelanggan]
    static hasMany = [workers: Worker, services: JasaBengkel]
    static constraints = {}
}
