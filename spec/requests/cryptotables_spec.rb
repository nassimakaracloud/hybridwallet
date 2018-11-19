require 'rails_helper'

RSpec.describe "Cryptotables", type: :request do
  describe "GET /cryptotables" do
    it "works! (now write some real specs)" do
      get cryptotables_path
      expect(response).to have_http_status(200)
    end
  end
end
