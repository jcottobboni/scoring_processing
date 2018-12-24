require 'rails_helper'

RSpec.describe "scores/show", type: :view do
  before(:each) do
    @score = assign(:score, Score.create!(
      :username => "Username",
      :user => nil,
      :points => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Username/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
