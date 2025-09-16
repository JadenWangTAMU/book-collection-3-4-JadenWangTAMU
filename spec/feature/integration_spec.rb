require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in "Title", with: 'Harry Potter'
    fill_in "Author", with: 'J.K. Rowling'
    fill_in "Price", with: "19.99"
    select '2000', from: 'book[published_date(1i)]'
    select 'July', from: 'book[published_date(2i)]'
    select '8', from: 'book[published_date(3i)]'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Harry Potter')
  end
end
