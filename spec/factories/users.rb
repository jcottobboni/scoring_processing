# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    username { Faker::Internet.username }
    name { Faker::Name.name }
    bio { Faker::Hipster.sentence }
    url { Faker::Internet.url }
    location { Faker::Nation.nationality }
    password { '12345678' }
    password_confirmation { '12345678' }
  end
end
