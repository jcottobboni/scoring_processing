require 'rails_helper'

RSpec.describe "scores/new", type: :view do
  before(:each) do
    assign(:score, Score.new(
      :username => "MyString",
      :user => nil,
      :points => 1
    ))
  end

  it "renders new score form" do
    render

    assert_select "form[action=?][method=?]", scores_path, "post" do

      assert_select "input[name=?]", "score[username]"

      assert_select "input[name=?]", "score[user_id]"

      assert_select "input[name=?]", "score[points]"
    end
  end
end
