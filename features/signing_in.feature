Feature: Signing in
    In order to use the site
    As a customer
    I want to be able to sign in

Background:
    Given there is a user with email address "user@googlemail.com" and password "password"

Scenario: Signing in via confirmation email
    And "user@googlemail.com" opens the email with subject "Confirmation instructions"
    And they click the first link in the email
    Then I should see "Your account was successfully confirmed."
    And I should see "Signed in as usernickname"

Scenario: Signing in via website form
    Given "user@googlemail.com" has confirmed their account
    And I am on the homepage
    When I follow "Sign in"
    And I fill in "Email" with "user@googlemail.com"
    And I fill in "Password" with "password"
    And I press "Sign in"
    Then I should see "Signed in successfully."

