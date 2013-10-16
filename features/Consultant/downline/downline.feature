Feature: Downline Report

  As a consultant
  I want to Run My downline report
  To see my downline information



Background:
  Given I am on Her Virtual Office

  Scenario: Delete All Existing Filters
    When I delete all existing filters
    Then I should see "You don't currently have any saved filters."

  Scenario: Run Downline in List View
    When I run my downline report in "List View"
    Then I should see my List View downline report

  Scenario: Run Downline in Team View
    When I run my downline report in "Team View"
    Then I should see my Team View downline report

  Scenario: Setup Downline Filter
    When I setup a downline filter
    Then I should see "Automation Filter"
    
  Scenario: Delete Filter
    When I delete a filter
    Then I should not see "Automation Filter"
