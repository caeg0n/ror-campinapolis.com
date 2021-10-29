require 'test_helper'

class PlanoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get plano_index_url
    assert_response :success
  end

  test "should get tabeladeprecos" do
    get plano_tabeladeprecos_url
    assert_response :success
  end

  test "should get compara" do
    get plano_compara_url
    assert_response :success
  end

end
