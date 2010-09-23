require 'spec_helper'

describe "workouts/new.html.erb" do
  before(:each) do
    assign(:workout, stub_model(Workout,
      :new_record? => true,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new workout form" do
    render

    rendered.should have_selector("form", :action => workouts_path, :method => "post") do |form|
      form.should have_selector("input#workout_title", :name => "workout[title]")
      form.should have_selector("textarea#workout_description", :name => "workout[description]")
    end
  end
end
