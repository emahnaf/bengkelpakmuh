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

    def update(id) {
        // Logika untuk mengupdate data dengan ID tertentu
    }

    def delete(id) {
        // Logika untuk menghapus data dengan ID tertentu
    }

    def save() {
        // Logika untuk menyimpan data setelah form dikirimkan
        def newWorker   = new Worker(params)
        if (newWorker.save()) {
            flash.message = "Worker berhasil ditambah!"
            redirect(action: "index")
        } else {
            render(view: "create", model: [item: newWorker])
        }
    }
}
