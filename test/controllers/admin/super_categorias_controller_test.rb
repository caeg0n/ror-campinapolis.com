require 'test_helper'

class Admin::SuperCategoriasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_super_categoria = admin_super_categorias(:one)
  end

  test "should get index" do
    get admin_super_categorias_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_super_categoria_url
    assert_response :success
  end

  test "should create admin_super_categoria" do
    assert_difference('Admin::SuperCategoria.count') do
      post admin_super_categorias_url, params: { admin_super_categoria: { descricao: @admin_super_categoria.descricao } }
    end

    assert_redirected_to admin_super_categoria_url(Admin::SuperCategoria.last)
  end

  test "should show admin_super_categoria" do
    get admin_super_categoria_url(@admin_super_categoria)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_super_categoria_url(@admin_super_categoria)
    assert_response :success
  end

  test "should update admin_super_categoria" do
    patch admin_super_categoria_url(@admin_super_categoria), params: { admin_super_categoria: { descricao: @admin_super_categoria.descricao } }
    assert_redirected_to admin_super_categoria_url(@admin_super_categoria)
  end

  test "should destroy admin_super_categoria" do
    assert_difference('Admin::SuperCategoria.count', -1) do
      delete admin_super_categoria_url(@admin_super_categoria)
    end

    assert_redirected_to admin_super_categorias_url
  end
end
