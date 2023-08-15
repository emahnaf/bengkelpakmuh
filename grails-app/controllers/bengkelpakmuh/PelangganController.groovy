package bengkelpakmuh

class PelangganController {

    def index() {
        def pelanggan = Pelanggan.list()
        [pelanggan: pelanggan]
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

    def save() {
        // Logika untuk menyimpan data setelah form dikirimkan
        def newPelanggan   = new Pelanggan(params)
        if (newPelanggan.save()) {
            flash.message = "pelanggan berhasil ditambah!"
            redirect(action: "index")
        } else {
            render(view: "create", model: [item: newPelanggan])
        }
    }
}
