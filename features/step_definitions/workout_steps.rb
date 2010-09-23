
Given /^I have a workout titled "([^"]*)" with description "([^"]*)"$/ do |title, description|
  Workout.create!(:title => title, :description => description)
end

