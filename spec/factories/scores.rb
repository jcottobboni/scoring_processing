FactoryBot.define do
  factory :score do
    score_date { "2018-12-24" }
    username { "MyString" }
    user { nil }
    points { 1 }
  end
end
