package org.yplanner.domain

class StoryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [storyInstanceList: Story.list(params), storyInstanceTotal: Story.count()]
    }

    def create = {
        def storyInstance = new Story()
        storyInstance.properties = params
        return [storyInstance: storyInstance]
    }

    def save = {
        def storyInstance = new Story(params)
        if (storyInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'story.label', default: 'Story'), storyInstance.id])}"
            redirect(action: "show", id: storyInstance.id)
        }
        else {
            render(view: "create", model: [storyInstance: storyInstance])
        }
    }

    def show = {
        def storyInstance = Story.get(params.id)
        if (!storyInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'story.label', default: 'Story'), params.id])}"
            redirect(action: "list")
        }
        else {
            [storyInstance: storyInstance]
        }
    }

    def edit = {
        def storyInstance = Story.get(params.id)
        if (!storyInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'story.label', default: 'Story'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [storyInstance: storyInstance]
        }
    }

    def update = {
        def storyInstance = Story.get(params.id)
        if (storyInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (storyInstance.version > version) {
                    
                    storyInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'story.label', default: 'Story')] as Object[], "Another user has updated this Story while you were editing")
                    render(view: "edit", model: [storyInstance: storyInstance])
                    return
                }
            }
            storyInstance.properties = params
            if (!storyInstance.hasErrors() && storyInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'story.label', default: 'Story'), storyInstance.id])}"
                redirect(action: "show", id: storyInstance.id)
            }
            else {
                render(view: "edit", model: [storyInstance: storyInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'story.label', default: 'Story'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def storyInstance = Story.get(params.id)
        if (storyInstance) {
            try {
                storyInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'story.label', default: 'Story'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'story.label', default: 'Story'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'story.label', default: 'Story'), params.id])}"
            redirect(action: "list")
        }
    }
}
