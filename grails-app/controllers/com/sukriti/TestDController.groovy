package com.sukriti



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TestDController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TestD.list(params), model:[testDInstanceCount: TestD.count()]
    }

    def show(TestD testDInstance) {
        respond testDInstance
    }

    def create() {
        respond new TestD(params)
    }

    @Transactional
    def save(TestD testDInstance) {
        if (testDInstance == null) {
            notFound()
            return
        }

        if (testDInstance.hasErrors()) {
            respond testDInstance.errors, view:'create'
            return
        }

        testDInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'testD.label', default: 'TestD'), testDInstance.id])
                redirect testDInstance
            }
            '*' { respond testDInstance, [status: CREATED] }
        }
    }

    def edit(TestD testDInstance) {
        respond testDInstance
    }

    @Transactional
    def update(TestD testDInstance) {
        if (testDInstance == null) {
            notFound()
            return
        }

        if (testDInstance.hasErrors()) {
            respond testDInstance.errors, view:'edit'
            return
        }

        testDInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TestD.label', default: 'TestD'), testDInstance.id])
                redirect testDInstance
            }
            '*'{ respond testDInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TestD testDInstance) {

        if (testDInstance == null) {
            notFound()
            return
        }

        testDInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TestD.label', default: 'TestD'), testDInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'testD.label', default: 'TestD'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
