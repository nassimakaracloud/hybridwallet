require 'rails_helper'
RSpec.describe HomeController, type: :controller do
  describe "GET #lookupcrypto" do
    it "returns http success" do
      get :lookupcrypto
      expect(response).to have_http_status(:success)
    end
  end
  describe "GET #lookupcurrency" do
    it "returns http success" do
      get :lookupcurrency
      expect(response).to have_http_status(:success)
    end
  end
end

