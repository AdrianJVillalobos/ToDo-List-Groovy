package boilerplate

import grails.gorm.transactions.Transactional

@Transactional
class ToDoController {

    def index() {
        respond ToDo.list() // List all ToDo items
    }

    def show(Long id) {
        def toDo = ToDo.get(id)
        if (toDo) {
            respond toDo // Display details of a specific ToDo item
        } else {
            flash.message = "Task not found" // User-friendly error message
            redirect action: "index" // Redirect to index if item not found
        }
    }

    def create() {
        respond new ToDo() // Show the form to create a new ToDo item
    }

    def save(ToDo toDo) {
        if (toDo.validate() && toDo.save(flush: true)) { // Validate and save ToDo
            flash.message = "Task created successfully" // Success message
            redirect action: "index" // Redirect to the list view
        } else {
            flash.message = "Failed to create task" // Error message
            render view: "create", model: [toDo: toDo] // Re-render the create view with errors
        }
    }

    def edit(Long id) {
        def toDo = ToDo.get(id)
        if (toDo) {
            respond toDo // Show the form to edit the ToDo item
        } else {
            flash.message = "Task not found" // User-friendly error message
            redirect action: "index" // Redirect to index if item not found
        }
    }

    def update(Long id, ToDo toDo) {
        def existingToDo = ToDo.get(id)
        if (existingToDo) {
            existingToDo.properties = toDo.properties
            if (existingToDo.validate() && existingToDo.save(flush: true)) { // Validate and update ToDo
                flash.message = "Task updated successfully" // Success message
                redirect action: "index" // Redirect to the list view
            } else {
                flash.message = "Failed to update task" // Error message
                render view: "edit", model: [toDo: existingToDo] // Re-render the edit view with errors
            }
        } else {
            flash.message = "Task not found" // User-friendly error message
            redirect action: "index" // Redirect to index if item not found
        }
    }

    def delete(Long id) {
        def toDo = ToDo.get(id)
        if (toDo) {
            toDo.delete(flush: true) // Delete the ToDo item
            flash.message = "Task deleted successfully" // Success message
        } else {
            flash.message = "Task not found" // User-friendly error message
        }
        redirect action: "index" // Redirect to the list view
    }
}
