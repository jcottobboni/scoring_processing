# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Signup', type: :feature do
  before { visit new_user_registration_path }

  scenario 'user with correct fields' do
    fill_in 'user[name]', with: 'Foo Bar'
    fill_in 'user[username]', with: 'foo_bar'
    fill_in 'user[email]', with: 'foo@bar.com'
    fill_in 'user[password]', with: '12345678'
    fill_in 'user[password_confirmation]', with: '12345678'

    click_button 'Sign up'

    expect(page.current_path).to eq(root_path)
  end

  scenario 'user without correct fields' do
    fill_in 'user[email]', with: 'foo_bar'
    fill_in 'user[password]', with: '12345678'
    fill_in 'user[password_confirmation]', with: '12345678'

    click_button 'Sign up'

    expect(page).to have_content("Name can't be blank")
    expect(page).to have_content("Username can't be blank")
  end
end
