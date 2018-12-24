# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject { build(:user) }

  it { is_expected.to respond_to :name }
  it { is_expected.to respond_to :email }
  it { is_expected.to respond_to :bio }
  it { is_expected.to respond_to :url }
  it { is_expected.to respond_to :location }
  it { is_expected.to respond_to :username }
  it { is_expected.to respond_to :password }
  it { is_expected.to respond_to :password_confirmation }

  it { is_expected.to be_valid }


  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:username) }
  it { is_expected.to validate_presence_of(:password) }

  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  it { is_expected.to validate_uniqueness_of(:username) }

  it { is_expected.to validate_length_of(:name).is_at_most(100) }
  it { is_expected.to validate_length_of(:email).is_at_most(100) }
  it { is_expected.to validate_length_of(:username).is_at_most(100) }
  it { is_expected.to validate_length_of(:bio).is_at_most(160) }
  it { is_expected.to validate_length_of(:url).is_at_most(100) }
  it { is_expected.to validate_length_of(:location).is_at_most(100) }
end
