Feature: User authentication
  In order to access restricted areas of the site
  As an authenticated user
  I want to be able to perform user actions

  Background: Setup default users
	Given I have the following users:
	 | username | email                 | password | password_confirmation |
	 | admin    | admin@hawkinsking.com | letmein  | letmein               |

  Scenario: Register a new user
    Given I am on "the user registration page"
    When I fill in the following:
	 | user_username              | testuser         |
	 | user_email                 | test@example.com |
	 | user_password              | letmein          |
	 | user_password_confirmation | letmein          |
	And I press "Register"
    Then I should see "Registration successful."
	And I should be on "the homepage"

  Scenario: Fail registration with duplicate details
    Given I am on "the user registration page"
	When I fill in the following:
	 | user_username              | admin                 |
	 | user_email                 | admin@hawkinsking.com |
	 | user_password              | letmein               |
	 | user_password_confirmation | letmein               |
    When I press "Register"
	Then I should see "Username has already been taken"
	Then I should see "Email has already been taken"
	
  Scenario: Fail registration with missing details
    Given I am on "the user registration page"
    When I fill in the following:
	 | user_username              |  |
	 | user_email                 |  |
	 | user_password              |  |
	 | user_password_confirmation |  |
	And I press "Register"
    Then I should see "Email is too short"
	And I should see "Email should look like an email address"
	And I should see "Username is too short"
	And I should see "Password is too short"
  
  Scenario: Login as a user
    Given I am on "the login page"
	And I fill in the following:
	 | username | admin   |
	 | password | letmein |

	And I press "Login"
	Then I should see "Successfully logged in."
	And I should be on "the homepage"
  
  
  
  
  
  
  
  
  
  

  
