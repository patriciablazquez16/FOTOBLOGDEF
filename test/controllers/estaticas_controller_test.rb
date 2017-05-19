require 'test_helper'

class EstaticasControllerTest < ActionController::TestCase
  test "should get contacto" do
    get :contacto
    assert_response :success
  end

end
