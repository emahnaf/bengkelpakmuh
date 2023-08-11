package bengkelpakmuh

class Jasabengkel {

//    String idjasa
    String namajasa
    int hargajasa
    int durasikerja

    static belongsTo = Transaksi
    static hasMany = [transaksis: Transaksi]
    static constraints = {
    }
}
