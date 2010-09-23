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
    Given I am on the admin homepage
    When I follow "Workouts"
    And I follow "New Workout"

Scenario: Creating a workout with valid fields
    And I fill in "Title" with "Deep breathing"
    And I fill in "Description" with "This is a workout about breathing"
    And I press "Create Workout"
    Then I should see "Workout was successfully created."

Scenario: Creating a workout with invalid fields
    And I press "Create Workout"
    Then I should not see "Workout was successfully created."
    And I should see "Title can't be blank"
    And I should see "Description can't be blank"

Scenario: Creating a workout with valid uploads
		And I fill in "Title" with "Deep breathing"
    And I fill in "Description" with "This is a workout about breathing"
    And I attach a valid audio file
    And I press "Create Workout"
    Then I should see "Workout was successfully created."

Scenario: Creating a workout with invalid file extension
		And I fill in "Title" with "Deep breathing"
    And I fill in "Description" with "This is a workout about breathing"
    And I attach a file with invalid extension
    And I press "Create Workout"
    Then I should see "Mp3 intro content type is invalid (must be MP3 file)"

Scenario: Creating a workout with invalid file size
		And I fill in "Title" with "Deep breathing"
    And I fill in "Description" with "This is a workout about breathing"
    And I attach a file with invalid size
    And I press "Create Workout"
    Then I should see "Mp3 intro file size must be smaller than 5Mb"    
	    

