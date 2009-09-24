@dashboard
Feature: Dashboard view
  In order to get a general overview of the system
  As a normal user
  I want to be able to view the dashboard
  
  Scenario: Attempt to view dashboard without logging in
    Given I am not logged in
    When I go to "the dashboard"
    Then I should see "You must be logged in to access this page"
  
  Scenario: Attempt to view dashboard with a valid login
    Given I am logged in as a generic user
    When I go to "the dashboard"
    Then I should be on "the dashboard"
  
  
  
  
  
  

  
