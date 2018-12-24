# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Access root path', type: :feature do
  scenario 'without sign in user' do
    visit root_path

    expect(page.current_path).to eq(new_user_session_path)
  end

  scenario 'with signed in user' do
    login_as create(:user)

    visit root_path

    expect(page.current_path)
  end
end
