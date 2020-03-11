require 'rails_helper'

RSpec.feature "Add an article blog", type: :feature do
  scenario "User sees new article form after signing in" do
    visit "/"
    click_link "My Blog"
    click_link "New article"
    expect(page).to have_content("New Article")
  end
end
