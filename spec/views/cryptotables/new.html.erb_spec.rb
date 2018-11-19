require 'rails_helper'

RSpec.describe "cryptotables/new", type: :view do
  before(:each) do
    assign(:cryptotable, Cryptotable.new(
      :symbol => "MyString",
      :user_id => 1,
      :unit_price => "9.99",
      :total_amount => "9.99"
    ))
  end

  it "renders new cryptotable form" do
    render

    assert_select "form[action=?][method=?]", cryptotables_path, "post" do

      assert_select "input[name=?]", "cryptotable[symbol]"

      assert_select "input[name=?]", "cryptotable[user_id]"

      assert_select "input[name=?]", "cryptotable[unit_price]"

      assert_select "input[name=?]", "cryptotable[total_amount]"
    end
  end
end
