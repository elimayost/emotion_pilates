Feature: Listing and showing workouts
    In order to know what are the actual workouts
    As an admin user
    I want to list and show them clearly

Background:
    Given there is an admin user with email address "admin@googlemail.com" and password "password"
    Given I am on the homepage
    When I follow "Sign in"
    And I fill in "Email" with "admin@googlemail.com"
    And I fill in "Password" with "password"
    And I press "Sign in"
    Then I should see "Signed in successfully."

Scenario: Listing workouts
    Given I am on the admin homepage
    When I follow "Workouts"
    Given I have a workout titled "Deep breathing" with description "This is a workout about breathing"
    And I have a workout titled "Anger management" with description "This is a workout about anger"
    Given I am on the workouts page
    Then I should see "Deep breathing"
    And I should see "This is a workout about breathing"
    And I should see "Anger management"
    And I should see "This is a workout about anger"

Scenario: Showing workouts
    Given I am on the admin homepage
    When I follow "Workouts"
    Given I have a workout titled "Deep breathing" with description "This is a workout about breathing"
    And I am on the workouts page
    When I follow "Show"
    Then I should see "Deep breathing"
    And I should see "This is a workout about breathing"

