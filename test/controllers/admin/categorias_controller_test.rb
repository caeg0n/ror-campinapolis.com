require 'test_helper'

class Admin::CategoriasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_categoria = admin_categorias(:one)
  end

  test "should get index" do
    get admin_categorias_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_categoria_url
    assert_response :success
  end

  test "should create admin_categoria" do
    assert_difference('Admin::Categoria.count') do
      post admin_categorias_url, params: { admin_categoria: { nome: @admin_categoria.nome } }
    end

    assert_redirected_to admin_categoria_url(Admin::Categoria.last)
  end

  test "should show admin_categoria" do
    get admin_categoria_url(@admin_categoria)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_categoria_url(@admin_categoria)
    assert_response :success
  end

  test "should update admin_categoria" do
    patch admin_categoria_url(@admin_categoria), params: { admin_categoria: { nome: @admin_categoria.nome } }
    assert_redirected_to admin_categoria_url(@admin_categoria)
  end

  test "should destroy admin_categoria" do
    assert_difference('Admin::Categoria.count', -1) do
      delete admin_categoria_url(@admin_categoria)
    end

    assert_redirected_to admin_categorias_url
  end
end
