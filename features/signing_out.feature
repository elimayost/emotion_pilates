Feature: Signing out
    In order to sign out of the site
    As a customer
    I want to be able to sign out easily

Background:
    Given there is a user with email address "user@googlemail.com" and password "password"
    And "user@googlemail.com" has confirmed their account
    Given I am on the homepage
    When I follow "Sign in"
    And I fill in "Email" with "user@googlemail.com"
    And I fill in "Password" with "password"
    And I press "Sign in"
    Then I should see "Signed in successfully."

Scenario: Signing out
    When I follow "Sign out"
    Then I should see "Signed out successfully."

