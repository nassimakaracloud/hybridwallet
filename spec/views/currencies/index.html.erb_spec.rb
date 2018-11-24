require 'rails_helper'

RSpec.describe "currencies/index", type: :view do
  before(:each) do
    assign(:currencies, [
      Currency.create!(
        :symbol => "Symbol",
        :user_id => 2,
        :unit_price => "9.99",
        :total_amount => "9.99"
      ),
      Currency.create!(
        :symbol => "Symbol",
        :user_id => 2,
        :unit_price => "9.99",
        :total_amount => "9.99"
      )
    ])
  end

  it "renders a list of currencies" do
    render
    assert_select "tr>td", :text => "Symbol".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
