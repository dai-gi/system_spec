require 'rails_helper'

RSpec.describe "Books", type: :system do
  it "enables to visit the index" do
    book = FactoryBot.create(:book)
    visit books_path
    expect(page).to have_text(book.title)
  end
end
