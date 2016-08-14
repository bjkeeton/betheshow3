require 'rails_helper'

RSpec.describe "event_options/index", type: :view do
  before(:each) do
    assign(:event_options, [
      EventOption.create!(
        :name => "Name",
        :price => 2.5,
        :description => "MyText"
      ),
      EventOption.create!(
        :name => "Name",
        :price => 2.5,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of event_options" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
