require 'test_helper'

class Admin::RecursosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_recurso = admin_recursos(:one)
  end

  test "should get index" do
    get admin_recursos_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_recurso_url
    assert_response :success
  end

  test "should create admin_recurso" do
    assert_difference('Admin::Recurso.count') do
      post admin_recursos_url, params: { admin_recurso: { desc: @admin_recurso.desc, img: @admin_recurso.img, titulo: @admin_recurso.titulo } }
    end

    assert_redirected_to admin_recurso_url(Admin::Recurso.last)
  end

  test "should show admin_recurso" do
    get admin_recurso_url(@admin_recurso)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_recurso_url(@admin_recurso)
    assert_response :success
  end

  test "should update admin_recurso" do
    patch admin_recurso_url(@admin_recurso), params: { admin_recurso: { desc: @admin_recurso.desc, img: @admin_recurso.img, titulo: @admin_recurso.titulo } }
    assert_redirected_to admin_recurso_url(@admin_recurso)
  end

  test "should destroy admin_recurso" do
    assert_difference('Admin::Recurso.count', -1) do
      delete admin_recurso_url(@admin_recurso)
    end

    assert_redirected_to admin_recursos_url
  end
end
