require 'spec_helper'

describe "workouts/index.html.erb" do
  before(:each) do
    assign(:workouts, [
      stub_model(Workout,
        :title => "MyString",
        :description => "MyText"
      ),
      stub_model(Workout,
        :title => "MyString",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of workouts" do
    render
    rendered.should have_selector("tr>td", :content => "MyString".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyText".to_s, :count => 2)
  end
end
