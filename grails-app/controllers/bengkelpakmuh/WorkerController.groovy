package bengkelpakmuh

class WorkerController {

    def index() {
        def workerList = Worker.list()

        [workerList: workerList]
    }

    def list() {
        // do controller logic
        // create model
        return model
    }

    def show(id) {
        def item = Worker.get(id)
        if (item) {
            render "Ini adalah halaman detail untuk item dengan ID ${id}"
        } else {
            render "Item dengan ID ${id} tidak ditemukan"
        }
    }

    def create() {
        // Logika untuk membuat data baru
    }

    def edit(Long id) {
        def pekerja = Worker.get(id)
        [pekerja: pekerja]
    }

//    def delete() {
//        def delete = Worker.get(params.id)
//        delete.delete()
//        redirect(action: "index")
//    }

    def delete() {
//        def jasaBengkel = JasaBengkel.get(params.id)
//
//        // Clear associations with Transaksi
//
//        // Delete the JasaBengkel instance
//        jasaBengkel.delete()

        def worker = Worker.get(params.id)
        worker
                .transaksis
                .clear()
        worker
                .delete()
        redirect(action: "index")
    }

        def save() {
            // Logika untuk menyimpan data setelah form dikirimkan
            def newWorker = new Worker(params)
            if (newWorker.save()) {
                flash.message = "Worker berhasil ditambah!"
                redirect(action: "index")
            } else {
                render(view: "create", model: [item: newWorker])
            }
        }

        def update() {
            def pekerja = Worker.get(params.editId)

            pekerja.namaWorker = params.namaWorker
            pekerja.save()

            redirect(action: "index")
        }
    }

