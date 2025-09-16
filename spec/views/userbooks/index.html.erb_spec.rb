require 'rails_helper'

RSpec.describe "userbooks/index", type: :view do
  before(:each) do
    assign(:userbooks, [
      Userbook.create!(
        user_id: 2,
        book_id: 3
      ),
      Userbook.create!(
        user_id: 2,
        book_id: 3
      )
    ])
  end

  it "renders a list of userbooks" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
  end
end
