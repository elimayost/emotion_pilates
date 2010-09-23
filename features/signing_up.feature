Feature: Signing up
    In order for customers to be able to comment or write on the forum
    As a customer
    I want to be able to sign up

Scenario: Signing up with valid fields
    Given I am on the homepage
    When I follow "Sign up"
    And I fill in "Email" with "user@googlemail.com"
    And I fill in "Nickname" with "usernickname"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I press "Sign up"
    Then I should see "You have signed up successfully. A confirmation link was sent your e-mail."

Scenario: Signing up with invalid fields
    Given I am on the homepage
    When I follow "Sign up"
    And I press "Sign up"
    Then I should see "Oops! In order to continue correct the following errors:"

