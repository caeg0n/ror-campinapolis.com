require 'test_helper'

class Admin::PlanosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_plano = admin_planos(:one)
  end

  test "should get index" do
    get admin_planos_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_plano_url
    assert_response :success
  end

  test "should create admin_plano" do
    assert_difference('Admin::Plano.count') do
      post admin_planos_url, params: { admin_plano: { nome: @admin_plano.nome, valor: @admin_plano.valor } }
    end

    assert_redirected_to admin_plano_url(Admin::Plano.last)
  end

  test "should show admin_plano" do
    get admin_plano_url(@admin_plano)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_plano_url(@admin_plano)
    assert_response :success
  end

  test "should update admin_plano" do
    patch admin_plano_url(@admin_plano), params: { admin_plano: { nome: @admin_plano.nome, valor: @admin_plano.valor } }
    assert_redirected_to admin_plano_url(@admin_plano)
  end

  test "should destroy admin_plano" do
    assert_difference('Admin::Plano.count', -1) do
      delete admin_plano_url(@admin_plano)
    end

    assert_redirected_to admin_planos_url
  end
end
