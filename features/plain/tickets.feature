@tickets
Feature: Ticket management
  In order to track faults and tasks on a project
  As a project member
  I want to be able to manage tickets
  
  Scenario: Create new ticket as logged in user
    Given I am logged in as a generic user
    When I go to "the new ticket page"
    Then the outcome is here
  
  
  

  
