Feature: Login screen
    How a Student from Portal EBAC
    I want be authenticated
    For visualize my exam notes

    Background:
        Given I access the authentication page from EBAC Portal

    Scenario: Valid authentication
        When I type the user "joao@ebac.com.br"
        And the password "senha@123"
        Then should display a welcome message "Hello João"

    Scenario: Nonexistent user
        When I type the user "joaoebac.com.br"
        And the password "senha@123"
        Then should display a alert message "Nonexistent user"

    Scenario: User with nonexistent password
        When I type the user "joao@ebac.com.br"
        And the password "fsfsfsfsfsfsfs"
        Then should display a alert message "User or password invalid"

    Scenario Outline: Authenticated multiple users
        When I type <user>
        And a <password>
        Then should display a <message>

        Examples:
            | user             | password | message          |
            | joao@ebac.com.br | 1234     | Success login    |
            | joaoebac.com     | 1234     | invalid user     |
            | joao@ebac.com.br | 0        | Invalid password |


