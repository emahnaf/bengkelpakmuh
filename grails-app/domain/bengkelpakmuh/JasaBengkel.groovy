package bengkelpakmuh

class JasaBengkel {

//    String idjasa
    String namajasa
    int hargaJasa
    int durasiKerja

    static belongsTo = Transaksi
    static hasMany = [transaksis: Transaksi]

    static mapping = {
        transaksis cascade: "all-delete-orphan"
    }

    static constraints = {
    }


}
