require 'rails_helper'

RSpec.describe "currencies/new", type: :view do
  before(:each) do
    assign(:currency, Currency.new(
      :symbol => "MyString",
      :user_id => 1,
      :unit_price => "9.99",
      :total_amount => "9.99"
    ))
  end

  it "renders new currency form" do
    render

    assert_select "form[action=?][method=?]", currencies_path, "post" do

      assert_select "input[name=?]", "currency[symbol]"

      assert_select "input[name=?]", "currency[user_id]"

      assert_select "input[name=?]", "currency[unit_price]"

      assert_select "input[name=?]", "currency[total_amount]"
    end
  end
end
