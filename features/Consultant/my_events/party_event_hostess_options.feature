Feature: Party Event Hostess Options

  As a Consultant
  I want the ability
  To setup a Party Event with Hostess Options

Background:
  Given I am on Her Virtual Office


  Scenario: Enter Event Details for Party Event with Hostess Options
    When I create a party event with hostess options

  Scenario: Cancel Event
    When I cancel my open events
    Then I should see "You have not created any events."