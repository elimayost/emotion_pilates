
Given /^there is a user with email address "([^"]*)" and password "([^"]*)"$/ do |email, password|
  User.create!(:email => email, :password => password, :password_confirmation => password, :nickname => 'usernickname')
end

Given /^"([^"]*)" has confirmed their account$/ do |email|
  User.find_by_email(email).confirm!
end

Given /^there is an admin user with email address "([^"]*)" and password "([^"]*)"$/ do |email, password|
  user = User.create!(:email => email, :password => password, :password_confirmation => password, :nickname => 'usernickname')
  user.confirm!
end

