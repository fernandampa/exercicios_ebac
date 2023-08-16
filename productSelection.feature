Feature: Product Selection
    How a EBAC-SHOP client
    I want to configure my product to my size and taste
    I want choose the quantity
    For add to cart

    Background:
        Given I access the EBAC-SHOP

    Scenario: Color, size and quantity selections must be mandatory
        When I select the color "blue"
        And the size "M"
        And the quantity "2"
        Then I can add the shops in the cart

    Scenario Outline: Must allow only 10 products per sale
        When a select <quantity> products
        Then I can see the message <message>

        Examples:
            | quantity | message                                 |
            | 9        | Number of products allowed for sale     |
            | 10       | Number of products allowed for sale     |
            | 11       | Number of products not allowed for sale |

    Scenario: Clear the shopping cart
        When I click the “clear” button 
        Then I can see the cart empty

