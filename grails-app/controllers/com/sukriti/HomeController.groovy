package com.sukriti

class HomeController {

    def index() {
        redirect(uri:'/')
    }

    def aboutUS() {

    }

    def thankYou () {
        println params
        sendMail {
            to "iamjustincredible2003@gmail.com"
            from "nikhil.sharma_26@yahoo.com"
            subject "Somebody wants to Contact the Educator Team"
            html g.render(template:"myThankYouMailTemplate")
        }
    }

    def contactUS() {

    }
}
