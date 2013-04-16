Feature: User can add a product to cart and have it generate a total

  Scenario: Add a product to the cart
    Given I am on the home page
    When I click Add to Cart
    Then I should see the cart