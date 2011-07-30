require 'spec_helper'

describe "helps/show.html.slim" do
  before(:each) do
    @help = assign(:help, stub_model(Help,
      :title => "Title",
      :body => "MyText",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
