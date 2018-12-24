module ControllersHelper
  CRUD_ACTIONS = [
    [:get, :index],
    [:get, :show],
    [:get, :new],
    [:get, :edit],
    [:post, :create],
    [:put, :update],
    [:delete, :destroy]
  ].freeze

  def login_user
    before(:each) do
      @current_user = create(:user)
      sign_in @current_user
    end
  end

  def unalthenticated_tests(tests_cases = CRUD_ACTIONS)
    tests_cases.each do |test_case|
      describe test_description(test_case) do
        define_before(test_case)

        it { expect(response).to redirect_to(new_user_session_path) }
      end
    end
  end

  private

  def define_before(test_case)
    case test_case.first
    when :get
      if %i(show edit).include?(test_case.last)
        before { get test_case.last.to_sym, params: { id: 1 } }
      else
        before { get test_case.last.to_sym }
      end
    when :post
      before { post test_case.last.to_sym }
    when :put
      before { put test_case.last.to_sym, params: { id: 1 } }
    when :patch
      before { patch test_case.last.to_sym, params: { id: 1 } }
    when :delete
      before { delete test_case.last.to_sym, params: { id: 1 } }
    else
      before { get test_case.last.to_sym }
    end
  end

  def test_description(test_case)
    case test_case.first
    when :get
      "GET #{test_case.last}"
    when :post
      "POST #{test_case.last}"
    when :put
      "PUT #{test_case.last}"
    when :patch
      "PATCH #{test_case.last}"
    when :delete
      "DELETE #{test_case.last}"
    else
      "GET #{test_case.last}"
    end
  end
end
