require 'rails_helper'

RSpec.feature "Add an article blog", type: :feature do
  scenario "User sees new article form after signing in" do
    visit "/"
    click_link "My Blog"
    click_link "New article"
    expect(page).to have_content("New Article")
  end

  scenario "User adds article content" do
    visit "/"
    click_link "My Blog"
    click_link "New article"
    fill_in 'article_title', with: "Test Title"
    fill_in 'article_text', with: "Test Text"
    click_button 'Create Article'
    expect(page).to have_content('Test Title')
  end
end
