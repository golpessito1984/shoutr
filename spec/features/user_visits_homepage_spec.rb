require 'rails_helper'

#Capybara syntax

feature "User visits homepage" do
  scenario "successfully" do
    visit root_path
    # page is provied by Capybara
    expect(page).to have_css 'h1', text: 'Shoutr'
  end
end
