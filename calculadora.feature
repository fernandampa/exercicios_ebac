Feature: Calculator
    How I don't know how to do a head count
    I want to use the calculator
    For sum two numbers

    Scenario Outline: Sum two numbers
        Given I Access the calculator
        When I type <number1>
        And a type <number2>
        Then should display a <message>

        Examples:
            | number1 | number2 | message     |
            | 1       | 1       | A soma é 2  |
            | 1       | 2       | A soma é 3  |
            | 1       | 3       | A soma é 4  |
            | 1       | 4       | A soma é 5  |
            | 1       | 5       | A soma é 6  |
            | 1       | 6       | A soma é 7  |
            | 1       | 7       | A soma é 8  |
            | 1       | 8       | A soma é 9  |
            | 2       | 1       | A soma é 3  |
            | 3       | 1       | A soma é 4  |
            | 4       | 1       | A soma é 5  |
            | 5       | 1       | A soma é 6  |
            | 6       | 1       | A soma é 7  |
            | 7       | 1       | A soma é 8  |
            | 8       | 1       | A soma é 9  |
            | 4       | 1       | A soma é 5  |
            | 5       | 2       | A soma é 7  |
            | 6       | 2       | A soma é 8  |
            | 7       | 2       | A soma é 9  |
            | 8       | 2       | A soma é 10 |

