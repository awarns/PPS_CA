@uat_smoke

Feature: UAT Smoke Test

  Background:
    Given I am on Her Virtual Office

  Scenario: Retail Ord
    When I setup a retail order
    And I Add product "3000" to my cart
    And I personalize using Embroidery
    And I Submit the Order

  Scenario: Cancel Event
    When I cancel my open events
    Then I should see "You have not created any events."

  Scenario: Enter Event Details for Party Event
    When I Create a Party Event
    Then I should see "Invitations"

  Scenario: Create an Invitation
    When I create an invitation
    Then I should see "My Events"

  Scenario: Create a Branded Email
    When I create a branded email
    Then I should see "Your email has been sent!"

  Scenario: Run Downline in Team View
    When I run my downline report in "Team View"
    Then I should see my Team View downline report

  Scenario: Add a Contact
    When I Add a contact
    Then I should see "Information Saved"

  Scenario: Search Acct Balance
    When I Search My Acct Balance
    And I view my order popup

  Scenario: Update Additional Info
    When I update my additional info
    Then I should see my additional info

  Scenario: Change Password
    When I go to the Additional Info Page
    And I Change My Password
    Then I should see "Your password has been changed."

  Scenario: Add Items to Order
    When I add an item to a business supply order
    Then I should see "$64.80"

  Scenario: Add Items to my Cart ship to host
    Given I am on my consultants replicated site
    When I add items to my party cart for ship to host
    Then I verify Order Totals, Product: "$65.00", Tax: "$4.74", Shipping : "$5.20", Total: "$74.94"

  Scenario: Setup Party Order
    When I setup a party order
    And Add a ship to host guest to my party
    And Add a direct ship guest to my party
    And Add products to my guests
    Then I verify my party order totals,Retail:"$210.00",Volume:"$210.00",Subtotal:"$210.00",ShipHand:"$20.80",Tax:"$17.50",Total:"$248.30"

  Scenario: I have a consultant search by email
    Given I am on the Connect with a Consultant Page
    When I find a consultant using my email address
    Then I should see "YOUR CONSULTANT"


