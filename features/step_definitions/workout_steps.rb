
Given /^I have a workout titled "([^"]*)" with description "([^"]*)"$/ do |title, description|
  Workout.create!(:title => title, :description => description)
end

When /^I attach a valid audio file$/ do
  attach_file('Mp3 intro', File.join(::Rails.root, 'features', 'support', 'jjgoldman.mp3'))
end

When /^I attach a file with invalid extension$/ do
  attach_file('Mp3 intro', File.join(::Rails.root, 'features', 'support', 'env.rb'))
end

When /^I attach a file with invalid size$/ do
  attach_file('Mp3 intro', File.join(::Rails.root, 'features', 'support', 'etnix.mp3'))
end
