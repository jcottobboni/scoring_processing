require 'rails_helper'

RSpec.describe "scores/edit", type: :view do
  before(:each) do
    @score = assign(:score, Score.create!(
      :username => "MyString",
      :user => nil,
      :points => 1
    ))
  end

  it "renders the edit score form" do
    render

    assert_select "form[action=?][method=?]", score_path(@score), "post" do

      assert_select "input[name=?]", "score[username]"

      assert_select "input[name=?]", "score[user_id]"

      assert_select "input[name=?]", "score[points]"
    end
  end
end
