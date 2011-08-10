require 'spec_helper'

describe "visionboards/edit.html.slim" do
  before(:each) do
    @visionboard = assign(:visionboard, stub_model(Visionboard,
      :user => nil
    ))
  end

  it "renders the edit visionboard form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => visionboards_path(@visionboard), :method => "post" do
      assert_select "input#visionboard_user", :name => "visionboard[user]"
    end
  end
end
