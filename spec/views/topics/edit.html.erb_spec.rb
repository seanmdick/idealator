require 'spec_helper'

describe "topics/edit.html.erb" do
  before(:each) do
    @topic = assign(:topic, stub_model(Topic,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit topic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => topic_path(@topic), :method => "post" do
      assert_select "input#topic_title", :name => "topic[title]"
      assert_select "textarea#topic_description", :name => "topic[description]"
    end
  end
end
