require 'rails_helper'

RSpec.describe "Books", type: :request do
  describe "POST /books" do
    it "creates a book successfully and shows flash notice" do
      post books_path, params: { book: { title: "Test Book", author: "Someone", price: 12.50, published_date: Date.today} }

      follow_redirect!

      expect(response.body).to include("Book was successfully created.")

      expect(Book.last.title).to eq("Test Book")
    end
    
    it "fails to create a book with blank title and shows error flash notice" do
      post books_path, params: { book: { title: "" } }

      expect(response).to have_http_status(:unprocessable_entity)

      expect(response.body).to match("Title can not be blank")
    end

    it "fails to create a book without an author" do
      post books_path, params: { book: { title: "Test Book", author: nil } }
      
      expect(response).to have_http_status(:unprocessable_entity)

      expect(response.body).to match("Author can not be blank")
    end

    it "fails to create a book without a price" do
      post books_path, params: { book: { title: "Test Book", price: nil } }
      
      expect(response).to have_http_status(:unprocessable_entity)
      
      expect(response.body).to match("Price can not be blank")
    end

    it "fails to create a book without a published_date" do
      post books_path, params: {book: { title: "Test Book", published_date: nil } }
      
      expect(response).to have_http_status(:unprocessable_entity)

      expect(response.body).to match("Published date can not be blank")
    end
  end
end
