require 'rails_helper'

RSpec.describe "currencies/edit", type: :view do
  before(:each) do
    @currency = assign(:currency, Currency.create!(
      :symbol => "MyString",
      :user_id => 1,
      :unit_price => "9.99",
      :total_amount => "9.99"
    ))
  end

  it "renders the edit currency form" do
    render

    assert_select "form[action=?][method=?]", currency_path(@currency), "post" do

      assert_select "input[name=?]", "currency[symbol]"

      assert_select "input[name=?]", "currency[user_id]"

      assert_select "input[name=?]", "currency[unit_price]"

      assert_select "input[name=?]", "currency[total_amount]"
    end
  end
end
