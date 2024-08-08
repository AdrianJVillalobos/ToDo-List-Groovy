package boilerplate

class ToDo {
    String title
    String description
    boolean completed = false

    static constraints = {
        title nullable: false, blank: false, unique: true // Ensures title is not null, not blank, and unique
        description nullable: true // Description is optional
        completed nullable: false // Ensure completed is not null
    }

    @Override
    String toString() {
        return "${title} - ${completed ? 'Completed' : 'Pending'}" // Customize toString() method for better readability
    }
}
