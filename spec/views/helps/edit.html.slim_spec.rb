require 'spec_helper'

describe "helps/edit.html.slim" do
  before(:each) do
    @help = assign(:help, stub_model(Help,
      :title => "MyString",
      :body => "MyText",
      :user => nil
    ))
  end

  it "renders the edit help form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => helps_path(@help), :method => "post" do
      assert_select "input#help_title", :name => "help[title]"
      assert_select "textarea#help_body", :name => "help[body]"
      assert_select "input#help_user", :name => "help[user]"
    end
  end
end
