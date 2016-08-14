require 'rails_helper'

RSpec.describe "event_options/show", type: :view do
  before(:each) do
    @event_option = assign(:event_option, EventOption.create!(
      :name => "Name",
      :price => 2.5,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/MyText/)
  end
end
