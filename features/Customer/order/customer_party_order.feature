Feature: Customer Party Order

  As a customer
  I want the ability to place a Customer Party Order
  As i will not be able to attend the consultant's party

Background:
  Given I am on my consultants replicated site

  Scenario: Setup Event
    When I am on Her Virtual Office
    When I Create a Party Event
    Then I should see "Invitations"

  Scenario: Add Items to my Cart ship to host
    When I add items to my party cart for ship to host
    Then I verify Order Totals, Product: "$77.00", Tax: "$10.81", Shipping : "$6.16", Total: "$93.97"

  Scenario: Add Items to my Cart direct ship
    When I add items to my party cart for direct ship
    Then I verify Order Totals, Product: "$77.00", Tax: "$11.66", Shipping : "$12.66", Total: "$101.32"

  Scenario: Remove Items from Cart
    When I remove items from my party cart
    Then I should see "Product Total: $48.00"

  Scenario: Update Quantity from Cart
    When I update the quantity of an item in my party customer cart
    Then I should see "Product Total: $126.00"

  Scenario: Update Personalization from Cart
    When I update the personalization options of an item in my party customer cart
    Then I should see "Product Total: $29.00"

  Scenario: Checkout with 31Gives on Order - Ship to Host
    When I submit a customer party order with ship to host order with 31gives
    Then I should see "Outstanding Balance: $94.00"
    And I submit my customer order

  Scenario: Checkout with 31Gives on Order - Direct Ship
    When I submit a customer party order with direct ship order with 31gives
    Then I should see "Outstanding Balance: $102.00"
    And I submit my customer order

  Scenario: Delete Payment
    When I delete a payment from my party customer order
    Then I should see "Payments: $0.00"

  Scenario: ProPay Submit Bad Payment
    When I submit the customer party order with a bad credit card

  Scenario: Verify Order as Consultant and Submit
    When I am on Her Virtual Office
    And I create my party order as a consultant
    Then I verify my party order totals,Retail:"$154.71",Volume:"$154.71",Subtotal:"$154.71",ShipHand:"$18.82",Tax:"$22.47",Total:"$196.00"
    And I submit my party event order


