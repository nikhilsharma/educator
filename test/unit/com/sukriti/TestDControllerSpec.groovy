package com.sukriti



import grails.test.mixin.*
import spock.lang.*

@TestFor(TestDController)
@Mock(TestD)
class TestDControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.testDInstanceList
            model.testDInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.testDInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def testD = new TestD()
            testD.validate()
            controller.save(testD)

        then:"The create view is rendered again with the correct model"
            model.testDInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            testD = new TestD(params)

            controller.save(testD)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/testD/show/1'
            controller.flash.message != null
            TestD.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def testD = new TestD(params)
            controller.show(testD)

        then:"A model is populated containing the domain instance"
            model.testDInstance == testD
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def testD = new TestD(params)
            controller.edit(testD)

        then:"A model is populated containing the domain instance"
            model.testDInstance == testD
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/testD/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def testD = new TestD()
            testD.validate()
            controller.update(testD)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.testDInstance == testD

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            testD = new TestD(params).save(flush: true)
            controller.update(testD)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/testD/show/$testD.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/testD/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def testD = new TestD(params).save(flush: true)

        then:"It exists"
            TestD.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(testD)

        then:"The instance is deleted"
            TestD.count() == 0
            response.redirectedUrl == '/testD/index'
            flash.message != null
    }
}
