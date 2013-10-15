Feature: Customer Retail Order

  As a customer
  I want to place a retail order
  On my consultants site

Background:
  Given I am on my consultants replicated site

  Scenario: Add Items To Cart
    When I add items to my retail cart
    And I verify Order Totals, Product: "$77.00", Tax: "$11.66", Shipping : "$12.66", Total: "$101.32"

  Scenario: Remove Items from Cart
    When I remove items from my retail cart
    Then I should see "Product Total: $48.00"

  Scenario: Update Quantity from Cart
    When I update the quantity of an item in my retail customer cart
    Then I should see "Product Total: $126.00"

  Scenario: Update Personalization from Cart
    When I update the personalization options of an item in my retail customer cart
    Then I should see "Product Total: $29.00"

  Scenario: Checkout with 31Gives on Order
    When I submit a customer retail order with 31gives
    Then I should see "Outstanding Balance: $102.00"
    And I submit my customer order

  Scenario: Checkout with out 31Gives on Order
    When I submit a customer retail order without 31gives
    Then I should see "Outstanding Balance: $101.32"
    And I submit my customer order

  Scenario: Delete Payment
    When I delete a payment from my customer order
    Then I should see "Payments: $0.00"

  Scenario: ProPay Submit Bad Payment
    When I submit the customer order with a bad credit card
    And I edit the bad payment and successfully submit






