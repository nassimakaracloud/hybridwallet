require 'spec_helper'

describe WelcomeController, :type => :controller do
    describe "GET #lookupcrypto" do
        it "returns a successful http status code" do
            get "lookupcrypto"
            response.should be_success
        end
    end
end
