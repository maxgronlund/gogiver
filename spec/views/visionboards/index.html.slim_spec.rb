require 'spec_helper'

describe "visionboards/index.html.slim" do
  before(:each) do
    assign(:visionboards, [
      stub_model(Visionboard,
        :user => nil
      ),
      stub_model(Visionboard,
        :user => nil
      )
    ])
  end

  it "renders a list of visionboards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
