require 'test_helper'

class GuestsControllerTest < ActionController::TestCase
  test "should get inde" do
    get :inde
    assert_response :success
  end

end
