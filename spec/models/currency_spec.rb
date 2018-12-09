require 'rails_helper'

RSpec.describe Currency, type: :model do
  before {@Currency = Currency.new(quantity: "1")}

  subject { @Currency }

   it { should respond_to(:quantity) }
end

RSpec.describe Currency, type: :model do
  before {@Currency = Currency.new(total_amount: "56")}

  subject { @Currency }

   it { should respond_to(:total_amount) }
end

require 'spec_helper'

describe Currency do

  before do
    @Currency = Currency.new(quantity: "4")
  end
  
  describe "when quantity is not present" do
    before { @Currency.quantity = " " }
    it { should_not be_valid }
  end
end

require 'spec_helper'

describe Currency do

  before do
    @Currency = Currency.new(total_amount: "5")
  end
  
  describe "when total_amount is not present" do
    before { @Currency.total_amount = " " }
    it { should_not be_valid }
  end
end


