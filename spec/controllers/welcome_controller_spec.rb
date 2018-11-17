require 'spec_helper'

describe WelcomeController, :type => :controller do
    describe "GET #index" do
        it "returns a successful http status code" do
            get "index"
            response.should be_success
        end
    end
end
