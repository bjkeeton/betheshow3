require 'rails_helper'

RSpec.describe "event_options/edit", type: :view do
  before(:each) do
    @event_option = assign(:event_option, EventOption.create!(
      :name => "MyString",
      :price => 1.5,
      :description => "MyText"
    ))
  end

  it "renders the edit event_option form" do
    render

    assert_select "form[action=?][method=?]", event_option_path(@event_option), "post" do

      assert_select "input#event_option_name[name=?]", "event_option[name]"

      assert_select "input#event_option_price[name=?]", "event_option[price]"

      assert_select "textarea#event_option_description[name=?]", "event_option[description]"
    end
  end
end
