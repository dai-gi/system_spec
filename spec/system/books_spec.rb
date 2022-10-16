require 'rails_helper'

RSpec.describe "Books", type: :system do
  before do
    driven_by(:selenium_chrome_headless)
  end

  it "enables to visit the index" do
    book = FactoryBot.create(:book)
    visit books_path
    expect(page).to have_text(book.title)
  end

  it "enables to create a book" do
    visit new_book_path
    fill_in "Title", with: "RubyBook"
    fill_in "Memo", with: "Nice"
    click_button "Create Book"
    expect(page).to have_text("Book successfully created")
  end
end
