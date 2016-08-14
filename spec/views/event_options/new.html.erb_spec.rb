require 'rails_helper'

RSpec.describe "event_options/new", type: :view do
  before(:each) do
    assign(:event_option, EventOption.new(
      :name => "MyString",
      :price => 1.5,
      :description => "MyText"
    ))
  end

  it "renders new event_option form" do
    render

    assert_select "form[action=?][method=?]", event_options_path, "post" do

      assert_select "input#event_option_name[name=?]", "event_option[name]"

      assert_select "input#event_option_price[name=?]", "event_option[price]"

      assert_select "textarea#event_option_description[name=?]", "event_option[description]"
    end
  end
end
