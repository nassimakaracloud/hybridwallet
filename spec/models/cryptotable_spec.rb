require 'rails_helper'

RSpec.describe Cryptotable, type: :model do
  before {@Cryptotable = Cryptotable.new(total_quantity: "1")}

  subject { @Cryptotable }

   it { should respond_to(:total_quantity) }
end

RSpec.describe Cryptotable, type: :model do
  before {@Cryptotable = Cryptotable.new(unit_price: "56")}

  subject { @Cryptotable }

   it { should respond_to(:unit_price) }
end

require 'spec_helper'

describe Cryptotable do

  before do
    @Cryptotables= Cryptotable.new(total_quantity: "4")
  end
  
  describe "when quantity is not present" do
    before { @Cryptotable.total_quantity = " " }
    it { should_not be_valid }
  end
end

require 'spec_helper'

describe Cryptotable do

  before do
    @Cryptotable = Cryptotable.new(unit_price: "5")
  end
  
  describe "when total_amount is not present" do
    before { @Cryptotable.unit_price = " " }
    it { should_not be_valid }
  end
end