package boilerplate

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class ToDoSpec extends Specification implements DomainUnitTest<ToDo> {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        expect:"fix me"
            true == false
    }
}
