Feature: Believe and Achieve

  As a consultant
  I want to view my believe and achieve tracker

Background:
  Given I am on Her Virtual Office

  Scenario: View Believe and Achieve Tracker
    When I view my believe and achieve tracker
    Then I should see "Believe & Achieve 2013"
