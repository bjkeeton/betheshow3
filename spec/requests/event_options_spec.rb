require 'rails_helper'

RSpec.describe "EventOptions", type: :request do
  describe "GET /event_options" do
    it "works! (now write some real specs)" do
      get event_options_path
      expect(response).to have_http_status(200)
    end
  end
end
