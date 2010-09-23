require 'spec_helper'

describe "workouts/show.html.erb" do
  before(:each) do
    assign(:workout, @workout = stub_model(Workout,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
   rendered.should contain("MyString")
   rendered.should contain("MyText")
  end
end
