require 'rails_helper'

feature 'User view root page' do
  scenario 'Successfully' do
    visit root_path

    expect(page).to have_css('h1', 'Welcome')
  end
end
