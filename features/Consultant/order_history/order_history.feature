Feature: Order History

  As a consultant
  I want to view my Order History

Background:
  Given I am on Her Virtual Office

  Scenario: View Order History Popup
    When I View an Order on the Order History Page
    Then I should see my order popup

  Scenario: Search Order History by Customer
    When I search my order history by customer
    Then I should see my customer in the order history table

  Scenario: Edit Customer Info from Order History
    When I search my order history by customer
    And Edit a customers info
    Then I should see "My Contacts"

  Scenario: Search by customer than view orders for customer
    When I search my order history by customer
    And view the customers orders



