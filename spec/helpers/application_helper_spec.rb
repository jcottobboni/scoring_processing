# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe '#full_title' do
    context 'with empty page_title' do
      it 'returns base title' do
        expect(helper.full_title).to eq('Scoring Processing')
      end
    end

    context 'without empty page_title' do
      it 'returns page title and base title' do
        expect(helper.full_title('Page Title')).to eq('Page Title | Scoring Processing')
      end
    end
  end
end
