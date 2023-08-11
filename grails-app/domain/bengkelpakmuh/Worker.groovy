package bengkelpakmuh

class Worker {

//    String idworker
    String namaWorker

//    static belongsTo = [kerja: Pekerjaan]

    static belongsTo = Transaksi
    static hasMany = [transaksis: Transaksi]
    static constraints = {
    }
}
