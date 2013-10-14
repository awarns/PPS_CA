Feature: Retail Order as a Consultant

  As a consultant
  I want to place a retail order

Background:
  Given I am on Her Virtual Office

  Scenario: Cancel Any Unsubmitted Orders
    When I cancel my unsubmitted orders

  Scenario: SetUp Retail Order
    When I setup a retail order
    Then I should see "Shop Online"

  Scenario: Add product to cart
    When I continue my order
    And I Add product "3000" to my cart
    And I personalize using Embroidery
    And I Add product "3244" to my cart
    And I personalize using Icon-It No Text
    Then I verify Order Totals, Product: "$72.00", Tax: "$5.52", Shipping : "9.76", Total: "$87.28"

  Scenario: Remove Item From Cart
    When I continue my order with items in my cart
    And I Remove Item "1" from my cart
    Then I verify Order Totals, Product: "$47.00", Tax: "$3.70", Shipping : "$7.76", Total: "$58.46"

  Scenario: Update Item From Cart
    When I continue my order with items in my cart
    And I update an item in my cart
    And I personalize using none
    Then I verify Order Totals, Product: "$87.00", Tax: "$6.61", Shipping : "$10.96", Total: "$104.57"

  Scenario: Add 31Gives To Order
    When I continue my order with items in my cart
    And I Add product "31givesr" to my cart
    Then I verify Order Totals, Product: "$87.43", Tax: "$6.61", Shipping : "$10.96", Total: "$105.00"

  Scenario: Change Shipping Information
    When I continue my order with items in my cart
    And I change my shipping information
    Then I verify Order Totals, Product: "$87.22", Tax: "$8.82", Shipping : "$10.96", Total: "$107.00"

  Scenario: Remove Item Keep Gives in Cart
    When I continue my order with items in my cart
    And I Remove Item "2" from my cart
    Then I verify Order Totals, Product: "$47.31", Tax: "$4.93", Shipping : "$7.76", Total: "$60.00"

  Scenario: Add Item So Gives is not Last on Order
    When I continue my order with items in my cart
    And I Add product "3000" to my cart
    And I personalize using none
    Then I verify Order Totals, Product: "$65.12", Tax: "$6.68", Shipping : "$9.20", Total: "$81.00"

  Scenario: Change Personalization
    When I continue my order with items in my cart
    And I change the personalization of item "2"
    And I personalize using Embroidery
    Then I verify Order Totals, Product: "$72.88", Tax: "$7.36", Shipping : "$9.76", Total: "$90.00"

  Scenario: Submit Order
    When I continue my order with items in my cart
    And I Submit the Order
    Then I should see the Order in my Order History Table



