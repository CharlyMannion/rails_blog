require 'rails_helper'

RSpec.feature "Display home page", type: :feature do
  scenario "User sees hello message" do
    visit "/"
    expect(page).to have_content("Hello, rails")
  end
end
