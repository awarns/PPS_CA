Feature: Email Tab in PPS

  As a consultant
  I want access to cool Email Features

Background:
  Given I am on Her Virtual Office


  Scenario: Create an Invitation
    When I create an invitation
    Then I should see "My Events"

  Scenario: Create a Branded Email
    When I create a branded email
    Then I should see "Your email has been sent!"

  Scenario: Manage My Contacts
    When I manage my contacts
    Then I should see "My Contacts"
    
  Scenario: Import Contacts
    When I import my contacts
    Then I should see "Choose Source"
    
  Scenario: View Contact Us
#    When I use contact us
#    Then I should see "Thank You. An email has been sent to customer service."
    




