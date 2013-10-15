Feature: Business Supply Order

  As a consultant
  I want to place a business supply order

Background:
  Given I am on Her Virtual Office

  Scenario: Add Items to Order
    When I add an item to a business supply order
    Then I should see "$84.23"

  Scenario: Place Order
    When I continue my order
    And I Business Supply Checkout

