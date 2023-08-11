package bengkelpakmuh

class Pelanggan {

//    String idpelanggan
    String namapelanggan
    String platmobil
    String nomorwa

    static hasMany = [transaksis: Transaksi]
    static constraints = {
    }
}
