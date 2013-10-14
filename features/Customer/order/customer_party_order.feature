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
    Then I verify Order Totals, Product: "$65.00", Tax: "$4.74", Shipping : "$5.20", Total: "$74.94"

  Scenario: Add Items to my Cart direct ship
    When I add items to my party cart for direct ship
    Then I verify Order Totals, Product: "$65.00", Tax: "$5.01", Shipping : "$9.20", Total: "$79.21"

  Scenario: Remove Items from Cart
    When I remove items from my party cart
    Then I should see "Product Total: $40.00"

  Scenario: Update Quantity from Cart
    When I update the quantity of an item in my party customer cart
    Then I should see "Product Total: $105.00"

  Scenario: Update Personalization from Cart
    When I update the personalization options of an item in my party customer cart
    Then I should see "Product Total: $25.00"

  Scenario: Checkout with 31Gives on Order - Ship to Host
    When I submit a customer party order with ship to host order with 31gives
    Then I should see "Outstanding Balance: $75.00"
    And I submit my customer order

  Scenario: Checkout with 31Gives on Order - Direct Ship
    When I submit a customer party order with direct ship order with 31gives
    Then I should see "Outstanding Balance: $80.00"
    And I submit my customer order

  Scenario: Delete Payment
    When I delete a payment from my party customer order
    Then I should see "Payments: $0.00"

  Scenario: ProPay Submit Bad Payment
    When I submit the customer party order with a bad credit card

  Scenario: Verify Order as Consultant and Submit
    When I am on Her Virtual Office
    And I create my party order as a consultant
    Then I verify my party order totals,Retail:"$130.85",Volume:"$130.00",Subtotal:"$130.85",ShipHand:"$14.40",Tax:"$9.75",Total:"$155.00"
    And I submit my party event order


