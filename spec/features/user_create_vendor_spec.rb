require 'rails_helper'

feature 'User create a vendor' do
  scenario 'and have success' do
    vendor = build(:company)

    visit root_path
    click_on 'Add Vendor'

    fill_in 'Razão Social', with: vendor.company_name
    fill_in 'Endereço', with: vendor.address
    fill_in 'Bairro', with: vendor.district
    fill_in 'Cidade', with: vendor.city
    fill_in 'Estado', with: vendor.state

    within('form') do
      click_on 'Register'
    end

    expect(page).to have_content(vendor.company_name)
    expect(page).to have_content(vendor.address)
    expect(page).to have_content(vendor.district)
    expect(page).to have_content(vendor.city)
    expect(page).to have_content(vendor.state)
  end

  scenario 'and don\'n have success' do
    visit root_path
    click_on 'Add Vendor'

    within('form') do
      click_on 'Register'
    end

    expect(page).to_not have_content('Campus Code')
    expect(page).to have_content('Não foi possível gravar company.')
  end
end
