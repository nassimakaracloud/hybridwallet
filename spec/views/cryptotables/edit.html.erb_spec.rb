require 'rails_helper'

RSpec.describe "cryptotables/edit", type: :view do
  before(:each) do
    @cryptotable = assign(:cryptotable, Cryptotable.create!(
      :symbol => "MyString",
      :user_id => 1,
      :unit_price => "9.99",
      :total_amount => "9.99"
    ))
  end

  it "renders the edit cryptotable form" do
    render

    assert_select "form[action=?][method=?]", cryptotable_path(@cryptotable), "post" do

      assert_select "input[name=?]", "cryptotable[symbol]"

      assert_select "input[name=?]", "cryptotable[user_id]"

      assert_select "input[name=?]", "cryptotable[unit_price]"

      assert_select "input[name=?]", "cryptotable[total_amount]"
    end
  end
end
