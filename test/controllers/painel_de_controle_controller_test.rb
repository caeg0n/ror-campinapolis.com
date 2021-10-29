require 'test_helper'

class PainelDeControleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get painel_de_controle_index_url
    assert_response :success
  end

end
