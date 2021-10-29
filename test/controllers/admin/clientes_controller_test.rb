require 'test_helper'

class Admin::ClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_cliente = admin_clientes(:one)
  end

  test "should get index" do
    get admin_clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_cliente_url
    assert_response :success
  end

  test "should create admin_cliente" do
    assert_difference('Admin::Cliente.count') do
      post admin_clientes_url, params: { admin_cliente: { admin_categoria_id: @admin_cliente.admin_categoria_id, admin_plano_id: @admin_cliente.admin_plano_id, endereco: @admin_cliente.endereco, nome: @admin_cliente.nome, slogan: @admin_cliente.slogan, telefone: @admin_cliente.telefone } }
    end

    assert_redirected_to admin_cliente_url(Admin::Cliente.last)
  end

  test "should show admin_cliente" do
    get admin_cliente_url(@admin_cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_cliente_url(@admin_cliente)
    assert_response :success
  end

  test "should update admin_cliente" do
    patch admin_cliente_url(@admin_cliente), params: { admin_cliente: { admin_categoria_id: @admin_cliente.admin_categoria_id, admin_plano_id: @admin_cliente.admin_plano_id, endereco: @admin_cliente.endereco, nome: @admin_cliente.nome, slogan: @admin_cliente.slogan, telefone: @admin_cliente.telefone } }
    assert_redirected_to admin_cliente_url(@admin_cliente)
  end

  test "should destroy admin_cliente" do
    assert_difference('Admin::Cliente.count', -1) do
      delete admin_cliente_url(@admin_cliente)
    end

    assert_redirected_to admin_clientes_url
  end
end
