Feature: Party Order as a Consultant

  As a consultant
  I want to place a party Order

Background:
  Given I am on Her Virtual Office

  Scenario: Cancel Orders
    When I cancel my unsubmitted orders

  Scenario: Setup Party Order
    When I setup a party order
    Then I should see "Order Details"

  Scenario: Add Guests to Party
    When I continue my order
    And Add a ship to host guest to my party
    And Add a direct ship guest to my party
    Then I should see "Order Details"

  Scenario: Add items to Party Order
    When I continue my order
    And Add products to my guests
    Then I verify my party order totals,Retail:"$248.00",Volume:"$248.00",Subtotal:"$248.00",ShipHand:"$26.34",Tax:"$35.66",Total:"$310.00"
    And I verify the Party Hostess Totals Hostess Plan Base Amt "$248.00" Hostess Half Price "1 / 0" Hostess Credit "$25.00 / $25.00" Exclusive Hostess Offer "1 / 0" Hostess Overage "0"

  Scenario: Add Hostess Credit
    When I continue my order
    And I add a hostess credit item to my order
    Then I verify my party order totals,Retail:"$332.00",Volume:"$332.00",Subtotal:"$332.00",ShipHand:"$31.06",Tax:"$43.94",Total:"$382.00"
    And I verify the Party Hostess Totals Hostess Plan Base Amt "$248.00" Hostess Half Price "1 / 0" Hostess Credit "$25.00 / $0.00" Exclusive Hostess Offer "1 / 0" Hostess Overage "$59.00"

  Scenario: Add exclusive hostess offer
    When I continue my order
    And I add an exclusive hostess offer price item to my order
    Then I verify my party order totals,Retail:"$362.00",Volume:"$307.00",Subtotal:"$337.00",ShipHand:"$33.46",Tax:"$48.16",Total:"$418.62"
    And I verify the Party Hostess Totals Hostess Plan Base Amt "$248.00" Hostess Half Price "1 / 0" Hostess Credit "$25.00 / $0.00" Exclusive Hostess Offer "1 / 1" Hostess Overage "$59.00"

  Scenario: Add Hostess Half Price
    When I continue my order
    And I add a hostess half price item to my order
    Then I verify my party order totals,Retail:"$384.00",Volume:"$307.00",Subtotal:"$348.00",ShipHand:"$34.34",Tax:"$49.70",Total:"$432.04"
    And I verify the Party Hostess Totals Hostess Plan Base Amt "$248.00" Hostess Half Price "1 / 1" Hostess Credit "$25.00 / $0.00" Exclusive Hostess Offer "1 / 1" Hostess Overage "$59.00"

  Scenario: Add 31gives
    When I continue my order
    And I add 31gives to my guests
    Then I verify my party order totals,Retail:"$385.00",Volume:"$307.00",Subtotal:"$349.00",ShipHand:"$34.34",Tax:"$49.70",Total:"$433.04"
    And I verify the Party Hostess Totals Hostess Plan Base Amt "$248.00" Hostess Half Price "1 / 1" Hostess Credit "$25.00 / $0.00" Exclusive Hostess Offer "1 / 1" Hostess Overage "$59.00"

  Scenario: Remove a Product from Order
    When I continue my order
    And I remove an item from my party order
    Then I verify my party order totals,Retail:"$325.22",Volume:"$272.00",Subtotal:"$314.22",ShipHand:"$31.54",Tax:"$44.79",Total:"$390.55"
    And I verify the Party Hostess Totals Hostess Plan Base Amt "$188.00" Hostess Half Price "0 / 1" Hostess Credit "$0.00 / $0.00" Exclusive Hostess Offer "0 / 1" Hostess Overage "$84.00"

  Scenario: Add additional item to order with gives already in cart
    When I continue my order
    And I add one item to my cart
    Then I verify my party order totals,Retail:"$385.00",Volume:"$307.00",Subtotal:"$349.00",ShipHand:"$34.34",Tax:"$49.70",Total:"$433.04"
    And I verify the Party Hostess Totals Hostess Plan Base Amt "$248.00" Hostess Half Price "1 / 1" Hostess Credit "$25.00 / $0.00" Exclusive Hostess Offer "1 / 1" Hostess Overage "$59.00"

  Scenario: Change Personalization
    When I continue my order
    And I change a personalization option
    Then I verify my party order totals,Retail:"$395.00",Volume:"$317.00",Subtotal:"$359.00",ShipHand:"$35.14",Tax:"$51.10",Total:"$445.24"
    And I verify the Party Hostess Totals Hostess Plan Base Amt "$248.00" Hostess Half Price "1 / 1" Hostess Credit "$25.00 / $0.00" Exclusive Hostess Offer "1 / 1" Hostess Overage "$69.00"

  Scenario: ProPay Bad Payment
    When I continue my order
    And I add two good payments and one bad payment
    And I Submit the Party Order expecting a ProPay Error
    Then I should see "Invalid card number"

  Scenario: Fix Bad Card. Successfully Submit Order
    When I continue my order
    And I fix my bad card
    And I Submit the Party Order