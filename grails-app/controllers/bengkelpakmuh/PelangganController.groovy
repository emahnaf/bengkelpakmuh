package bengkelpakmuh

class PelangganController {

    def index() {
        def pelan = Pelanggan.list()
        [pelanggan: pelan]
    }

    def create() {
        [pelanggan: Pelanggan]
    }

    def update() {
        [pelanggan: Pelanggan]
    }

    def delete() {
        [pelanggan: Pelanggan]
    }

}
