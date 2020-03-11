require 'rails_helper'

RSpec.feature "Display blog", type: :feature do
  scenario "User sees Articles" do
    visit "/"
    click_link "My Blog"
    expect(page).to have_content("Articles")
  end
end
