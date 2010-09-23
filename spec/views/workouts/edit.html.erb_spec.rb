require 'spec_helper'

describe "workouts/edit.html.erb" do
  before(:each) do
    assign(:workout, @workout = stub_model(Workout,
      :new_record? => false,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit workout form" do
    render

    rendered.should have_selector("form", :action => workout_path(@workout), :method => "post") do |form|
      form.should have_selector("input#workout_title", :name => "workout[title]")
      form.should have_selector("textarea#workout_description", :name => "workout[description]")
    end
  end
end
