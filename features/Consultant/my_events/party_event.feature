Feature: Party Event

  As a consultant
  I want to setup a Party Event
  and invite guests

Background:
  Given I am on Her Virtual Office

  Scenario: Enter Event Details for Party Event
    When I Create a Party Event
    Then I should see "Invitations"

  Scenario: Enter Invitations Information
    When I enter invitation information
    Then I should see "New Guest"

  Scenario: Add Guest to Party
    When I add a guest to a party
    Then I should not see "No Guests have been invited to this event."

  Scenario: Edit Guest on Party
    When I edit a guest invited to a party
    Then I should see a Yes RSVP

  Scenario: Preview Invitations
    When I preview an invite
    Then I should see the invite

  Scenario: Send Invitations
    When I send an invitation
    Then I should see "Email Invitations will be sent to the following guest(s):"

  Scenario: Delete Guest from invite
    When I delete a guest from an invite
    Then I should see "No guests have been invited to this event."

  Scenario: Cancel Event
    When I cancel my open events
    Then I should see "You have not created any events."





