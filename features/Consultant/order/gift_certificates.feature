Feature: Gift Certificates

  As a consultant
  I want the ability to create gift cards
  and apply them towards an Order

Background:
  Given I am on Her Virtual Office

  Scenario: Order a Gift Cert
    When I order a gift certificate
    Then I should see my gift card in my manage gift certificates table

  Scenario: Redeem Gift Cert
    When I redeem a gift cert on an order
    Then I should see "Payments: $25.00"
    And I should see "Outstanding Balance: $84.86"

  Scenario: Submit Gift Cert Order
    When I submit my order with a gift cert payment
    Then I should see my gift card as redeemed
