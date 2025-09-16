require 'rails_helper'

RSpec.describe "userbooks/new", type: :view do
  before(:each) do
    assign(:userbook, Userbook.new(
      user_id: 1,
      book_id: 1
    ))
  end

  it "renders new userbook form" do
    render

    assert_select "form[action=?][method=?]", userbooks_path, "post" do

      assert_select "input[name=?]", "userbook[user_id]"

      assert_select "input[name=?]", "userbook[book_id]"
    end
  end
end
