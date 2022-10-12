require 'rails_helper'

RSpec.describe "Books", type: :system do
  it "enables to visit the index" do
    visit books_path
    expect(page).to have_text("foo")
  end
end
