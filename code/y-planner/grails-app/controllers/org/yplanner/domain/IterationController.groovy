package org.yplanner.domain

class IterationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [iterationInstanceList: Iteration.list(params), iterationInstanceTotal: Iteration.count()]
    }

    def create = {
        def iterationInstance = new Iteration()
        iterationInstance.properties = params
        return [iterationInstance: iterationInstance]
    }

    def save = {
        def iterationInstance = new Iteration(params)
        if (iterationInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'iteration.label', default: 'Iteration'), iterationInstance.id])}"
            redirect(action: "show", id: iterationInstance.id)
        }
        else {
            render(view: "create", model: [iterationInstance: iterationInstance])
        }
    }

    def show = {
        def iterationInstance = Iteration.get(params.id)
        if (!iterationInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'iteration.label', default: 'Iteration'), params.id])}"
            redirect(action: "list")
        }
        else {
            [iterationInstance: iterationInstance]
        }
    }

    def edit = {
        def iterationInstance = Iteration.get(params.id)
        if (!iterationInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'iteration.label', default: 'Iteration'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [iterationInstance: iterationInstance]
        }
    }

    def update = {
        def iterationInstance = Iteration.get(params.id)
        if (iterationInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (iterationInstance.version > version) {
                    
                    iterationInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'iteration.label', default: 'Iteration')] as Object[], "Another user has updated this Iteration while you were editing")
                    render(view: "edit", model: [iterationInstance: iterationInstance])
                    return
                }
            }
            iterationInstance.properties = params
            if (!iterationInstance.hasErrors() && iterationInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'iteration.label', default: 'Iteration'), iterationInstance.id])}"
                redirect(action: "show", id: iterationInstance.id)
            }
            else {
                render(view: "edit", model: [iterationInstance: iterationInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'iteration.label', default: 'Iteration'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def iterationInstance = Iteration.get(params.id)
        if (iterationInstance) {
            try {
                iterationInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'iteration.label', default: 'Iteration'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'iteration.label', default: 'Iteration'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'iteration.label', default: 'Iteration'), params.id])}"
            redirect(action: "list")
        }
    }
}
