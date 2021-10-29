require 'test_helper'

class Admin::DefinicoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_definicao = admin_definicoes(:one)
  end

  test "should get index" do
    get admin_definicoes_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_definicao_url
    assert_response :success
  end

  test "should create admin_definicao" do
    assert_difference('Admin::Definicao.count') do
      post admin_definicoes_url, params: { admin_definicao: { admin_plano_id: @admin_definicao.admin_plano_id, desc: @admin_definicao.desc } }
    end

    assert_redirected_to admin_definicao_url(Admin::Definicao.last)
  end

  test "should show admin_definicao" do
    get admin_definicao_url(@admin_definicao)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_definicao_url(@admin_definicao)
    assert_response :success
  end

  test "should update admin_definicao" do
    patch admin_definicao_url(@admin_definicao), params: { admin_definicao: { admin_plano_id: @admin_definicao.admin_plano_id, desc: @admin_definicao.desc } }
    assert_redirected_to admin_definicao_url(@admin_definicao)
  end

  test "should destroy admin_definicao" do
    assert_difference('Admin::Definicao.count', -1) do
      delete admin_definicao_url(@admin_definicao)
    end

    assert_redirected_to admin_definicoes_url
  end
end
