require 'rails_helper'

RSpec.describe User, type: :model do
  before {@user = User.new(email: "nassima.kara@example.com")}

  subject { @user }

   it { should respond_to(:email) }
end

RSpec.describe User, type: :model do
  before {@user = User.new(password: "password")}

  subject { @user }

   it { should respond_to(:password) }
end

require 'spec_helper'

describe User do

  before do
    @user = User.new(email: "user@example.com")
  end
  
  describe "when email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end
end

require 'spec_helper'

describe User do

  before do
    @user = User.new(password: "password")
  end
  
  describe "when password is not present" do
    before { @user.password = " " }
    it { should_not be_valid }
  end
end


