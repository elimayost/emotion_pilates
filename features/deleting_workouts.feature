Feature: Deleting workouts
    In order to only keep the relevant workouts for customers to use
    As an admin user
    I want to delete them easily

Background:
    Given there is an admin user with email address "admin@googlemail.com" and password "password"
    Given I am on the homepage
    When I follow "Sign in"
    And I fill in "Email" with "admin@googlemail.com"
    And I fill in "Password" with "password"
    And I press "Sign in"
    Then I should see "Signed in successfully."

Scenario: Deleting a workout
    Given I am on the workouts page
    And I have a workout titled "Deep breathing" with description "This is a workout about breathing"
    And I am on the workouts page
    When I follow "Destroy"
    Then I should see "Workout was successfully deleted."
    Given I am on the workouts page
    Then I should not see "Deep breathing"
    And I should not see "This is a workout about breathing"

