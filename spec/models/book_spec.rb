require 'rails_helper'

RSpec.describe Book, type: :model do
  it "is valid with a title" do
    book = Book.new(title: "Moby Dick", author: "Herman Melville", price: 10.99, published_date: Date.new(1851,10,18))
    expect(book).to be_valid
  end

  it "is not valid without a title" do
    book = Book.new(title: nil)
    expect(book).not_to be_valid
  end
  
  subject { described_class.new(title: "Test Book") }

  it "is not valid without an author" do
    subject.author=nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a price" do
    subject.price=nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a published_date" do
    subject.published_date=nil
    expect(subject).to_not be_valid
  end

end
