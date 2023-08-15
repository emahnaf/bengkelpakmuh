package bengkelpakmuh

class JasaBengkelController {

    def index() {

    }

    def create() {

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
}
