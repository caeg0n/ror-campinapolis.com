require 'test_helper'

class RecursoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recurso_index_url
    assert_response :success
  end

end
