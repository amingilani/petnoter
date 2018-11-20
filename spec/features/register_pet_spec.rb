require 'rails_helper'

RSpec.feature 'Register a new pet', type: :feature do
  scenario 'User creates a new pet registreation' do

    visit root_path
    fill_in 'Chip ID', with: '012345678901234'
    click_button 'Register'
    fill_in 'Animal type', with: 'Dog'
    fill_in 'Animal name', with: 'Spike'
    fill_in 'Owner name', with: 'John Doe'
    fill_in 'Owner email', with: 'owner@example.com'
    fill_in 'Owner email confirmation', with: 'owner@example.com'
    fill_in 'Owner email confirmation', with: 'owner@example.com'
    fill_in 'Owner phone', with: '+920000000000'
    fill_in 'Owner password', with: 'password'
    fill_in 'Owner password confirmation', with: 'password'
    click_button 'Save'

    expect(page).to have_text('success')
  end
end
