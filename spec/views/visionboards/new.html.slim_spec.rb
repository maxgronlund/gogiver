require 'spec_helper'

describe "visionboards/new.html.slim" do
  before(:each) do
    assign(:visionboard, stub_model(Visionboard,
      :user => nil
    ).as_new_record)
  end

  it "renders new visionboard form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => visionboards_path, :method => "post" do
      assert_select "input#visionboard_user", :name => "visionboard[user]"
    end
  end
end
