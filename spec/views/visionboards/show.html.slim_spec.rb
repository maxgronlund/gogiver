require 'spec_helper'

describe "visionboards/show.html.slim" do
  before(:each) do
    @visionboard = assign(:visionboard, stub_model(Visionboard,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
