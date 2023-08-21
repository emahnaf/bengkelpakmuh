package bengkelpakmuh

class JasaBengkelController {

    def index() {
        def jasabengkel = JasaBengkel.list()
        [jasabengkel: jasabengkel]
    }

    def create() {
    }

    def edit(Long id) {
        def jasabengkel = JasaBengkel.get(id)
        [jasabengkel : jasabengkel]
    }
    def save() {
        // Logika untuk menyimpan data setelah form dikirimkan
        def newjasaBengkel   = new JasaBengkel(params)
        if (newjasaBengkel.save()) {
            flash.message = "pelanggan berhasil ditambah!"
            redirect(action: "index")
        } else {
            render(view: "create", model: [item: newjasaBengkel])
        }
    }

    def delete() {
        def jasaBengkel = JasaBengkel.get(params.id)
        jasaBengkel
                .transaksis
                .clear()
        jasaBengkel
                .delete()
        redirect(action: "index")
    }

    def update(){
        def jasabengkel = JasaBengkel.get(params.editId)

        jasabengkel.namajasa = params.namajasa as String
        jasabengkel.durasiKerja=params.durasiKerja as Integer
        jasabengkel.hargaJasa=params.hargaJasa as Integer
        jasabengkel.save()

        redirect(action: "index")
    }
}
