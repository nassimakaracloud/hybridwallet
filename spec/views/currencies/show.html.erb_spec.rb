require 'rails_helper'

RSpec.describe "currencies/show", type: :view do
  before(:each) do
    @currency = assign(:currency, Currency.create!(
      :symbol => "Symbol",
      :user_id => 2,
      :unit_price => "9.99",
      :total_amount => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Symbol/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
