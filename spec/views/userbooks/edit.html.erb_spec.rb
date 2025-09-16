require 'rails_helper'

RSpec.describe "userbooks/edit", type: :view do
  let(:userbook) {
    Userbook.create!(
      user_id: 1,
      book_id: 1
    )
  }

  before(:each) do
    assign(:userbook, userbook)
  end

  it "renders the edit userbook form" do
    render

    assert_select "form[action=?][method=?]", userbook_path(userbook), "post" do

      assert_select "input[name=?]", "userbook[user_id]"

      assert_select "input[name=?]", "userbook[book_id]"
    end
  end
end
