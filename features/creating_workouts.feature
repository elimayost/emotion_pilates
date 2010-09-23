Feature: Creating workouts
    In order to have workouts for customers to use
    As an admin user
    I want to create them easily

Background:
    Given there is an admin user with email address "admin@googlemail.com" and password "password"
    Given I am on the homepage
    When I follow "Sign in"
    And I fill in "Email" with "admin@googlemail.com"
    And I fill in "Password" with "password"
    And I press "Sign in"
    Then I should see "Signed in successfully."

Scenario: Creating a workout with valid fields
    Given I am on the admin homepage
    When I follow "Workouts"
    And I follow "New Workout"
    And I fill in "Title" with "Deep breathing"
    And I fill in "Description" with "This is a workout about breathing"
    And I press "Create Workout"
    Then I should see "Workout was successfully created."

Scenario: Creating a workout with invalid fields
    Given I am on the admin homepage
    When I follow "Workouts"
    And I follow "New Workout"
    And I press "Create Workout"
    Then I should not see "Workout was successfully created."
    And I should see "Title can't be blank"
    And I should see "Description can't be blank"

