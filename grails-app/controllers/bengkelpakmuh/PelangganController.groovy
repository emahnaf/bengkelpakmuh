package bengkelpakmuh

class PelangganController {

    def index() {
        def pelanggan = Pelanggan.list()
        [pelanggan: pelanggan]
    }

    def create() {
        [pelanggan: Pelanggan]
    }

    def edit(Long id) {
        def pelanggan = Pelanggan.get(id)
        [pelanggan: pelanggan]
    }

    def delete() {
        def delete = Pelanggan.get(params.id)
        delete.delete()
        redirect(action: "index")
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

    def update(){
        def pelanggan = Pelanggan.get(params.editId)

        pelanggan.namapelanggan = params.namapelanggan
        pelanggan.platmobil=params.platmobil
        pelanggan.nomorwa=params.nomorwa
        pelanggan.save()

        redirect(action: "index")
    }
}
