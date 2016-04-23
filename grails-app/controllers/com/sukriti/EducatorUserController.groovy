package com.sukriti



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EducatorUserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond EducatorUser.list(params), model:[educatorUserInstanceCount: EducatorUser.count()]
    }

    def show(EducatorUser educatorUserInstance) {
        respond educatorUserInstance
    }

    def create() {
        respond new EducatorUser(params)
    }

    @Transactional
    def save(EducatorUser educatorUserInstance) {
        if (educatorUserInstance == null) {
            notFound()
            return
        }

        if (educatorUserInstance.hasErrors()) {
            respond educatorUserInstance.errors, view:'create'
            return
        }

        educatorUserInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'educatorUser.label', default: 'EducatorUser'), educatorUserInstance.id])
                redirect educatorUserInstance
            }
            '*' { respond educatorUserInstance, [status: CREATED] }
        }
    }

    def edit(EducatorUser educatorUserInstance) {
        respond educatorUserInstance
    }

    @Transactional
    def update(EducatorUser educatorUserInstance) {
        if (educatorUserInstance == null) {
            notFound()
            return
        }

        if (educatorUserInstance.hasErrors()) {
            respond educatorUserInstance.errors, view:'edit'
            return
        }

        educatorUserInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'EducatorUser.label', default: 'EducatorUser'), educatorUserInstance.id])
                redirect educatorUserInstance
            }
            '*'{ respond educatorUserInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(EducatorUser educatorUserInstance) {

        if (educatorUserInstance == null) {
            notFound()
            return
        }

        educatorUserInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'EducatorUser.label', default: 'EducatorUser'), educatorUserInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'educatorUser.label', default: 'EducatorUser'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
