Feature: Contacts Feature

  As a consultant
  I want the ability to
  add to and edit my contact list

Background:
  Given I am on Her Virtual Office

  Scenario: Add a Contact
    When I Add a contact
    Then I should see "Information Saved"

  Scenario: Search Contacts
    When I search my contacts
    Then I should see the contact in my contact list

  Scenario: Edit a Contact
    When I edit a contact
    Then I should see "Information Saved"

  Scenario: Add a note
    When I add a note to a contact
    Then I should see "Please enter a note"

  Scenario: Import Contacts
    When I import a contact
    Then I should see "Choose Source"

  Scenario: Merge Contacts
    When I merge two contacts
    Then I should see "My Contacts"

