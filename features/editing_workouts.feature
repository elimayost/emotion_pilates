Feature: Editing workouts
    In order to keep relevant workouts for customers to use
    As an admin user
    I want to edit them easily

Background:
    Given there is an admin user with email address "admin@googlemail.com" and password "password"
    Given I am on the homepage
    When I follow "Sign in"
    And I fill in "Email" with "admin@googlemail.com"
    And I fill in "Password" with "password"
    And I press "Sign in"
    Then I should see "Signed in successfully."

Scenario: Editing a workout with valid fields
    Given I am on the admin homepage
    When I follow "Workouts"
    Given I have a workout titled "Deep breathing" with description "This is a workout about breathing"
    And I am on the workouts page
    When I follow "Edit"
    And I fill in "Title" with "Deep breathing updated"
    And I fill in "Description" with "This is an updated workout about breathing"
    When I press "Update Workout"
    Then I should see "Workout was successfully updated."
    And I should see "Deep breathing updated"
    And I should see "This is an updated workout about breathing"

Scenario: Editing a workout with invalid fields
    Given I am on the admin homepage
    When I follow "Workouts"
    Given I have a workout titled "Deep breathing" with description "This is a workout about breathing"
    And I am on the workouts page
    When I follow "Edit"
    And I fill in "Title" with ""
    And I fill in "Description" with ""
    And I press "Update Workout"
    Then I should see "Title can't be blank"
    And I should see "Description can't be blank"

