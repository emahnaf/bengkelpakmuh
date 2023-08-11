package bengkelpakmuh

class JasabengkelController {

    def index() { render 'Jasabengkel'}

    def create() {
        def tambahjasa = new Jasabengkel()
        tambahjasa.namajasa = "ganti oli"
        tambahjasa.hargajasa = 30000
        tambahjasa.durasikerja= 60

        tambahjasa.save()

        // You might want to add further logic or a response here
    }
}
