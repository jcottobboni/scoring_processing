# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RootController, type: :controller do
  context 'with logged in user' do
    login_user

    describe '#index' do

      before { get :index }

      it { expect(response).to have_http_status(:success) }
      it { expect(response).to render_template(:index) }
    end
  end

  context 'without logged in user' do
    unalthenticated_tests([[:get, :index]])
  end
end
