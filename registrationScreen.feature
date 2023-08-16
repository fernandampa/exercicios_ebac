Feature: Login EBAC
    As a customer of EBAC-SHOP
    I want to complete my registration
    To complete my purchase

    Background:
        Given I access the EBAC-SHOP

    Scenario Outline: Required fields
        When I input the required filds <name>, <lastname>, <country>, <address>, <city>, <Zip Code>, <phone number> and <email>
        And I input the optional field <business name>
        And click on register button
        Then should display a success message <message>

        Examples:

            | name | lastname | country | address          | city      | Zip Code | phone number | email           | business name | message                      |
            | João | Lima     | Brasil  | Rua Luis Gonzaga | Fortaleza | 63500000 | 8599999999   | teste@gmail.com | EBAC          | successfully registered user |

    Scenario Outline: Email with invalid format
        When I input the required fild <address> with invalid format
        And click on register button
        Then should display an error message <message>

        Examples:

            | email             | message                           |
            | teste@@@gmail.com | email with invalid format inputed |

    Scenario Outline: Required fields empty
        When I input the required filds <name>, <lastname>, <country>, <address>, <city>, <Zip Code>, <phone number> and <email>
        And I input the optional field <business name>
        And click on register button
        Then should display an alert message <message>

        Examples:

            | name | lastname | country | address          | city      | Zip Code | phone number | email           | message       |
            |      | Lima     | Brasil  | Rua Luis Gonzaga | Fortaleza | 63500000 | 8599999999   | teste@gmail.com | Missing field |
