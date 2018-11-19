require 'rails_helper'

RSpec.feature 'organization sign up', type: :feature do
  scenario 'User creates a new organization and signs up' do
    # after signing in
    visit '/pets/new'

    fill_in 'Tag', with: '012345678901234'
    fill_in 'Animal type', with: 'Dog'
    fill_in 'Animal name', with: 'Spike'
    fill_in 'Owner name', with: 'John Doe'
    fill_in 'Owner email', with: 'owner@example.com'
    fill_in 'Owner phone', with: '+920000000000'
    click_button 'Save'

    expect(page).to have_text('success')
  end
end
