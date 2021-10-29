require 'test_helper'

class Admin::ClienteStatusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_cliente_statu = admin_cliente_status(:one)
  end

  test "should get index" do
    get admin_cliente_status_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_cliente_statu_url
    assert_response :success
  end

  test "should create admin_cliente_statu" do
    assert_difference('Admin::ClienteStatu.count') do
      post admin_cliente_status_url, params: { admin_cliente_statu: { status: @admin_cliente_statu.status } }
    end

    assert_redirected_to admin_cliente_statu_url(Admin::ClienteStatu.last)
  end

  test "should show admin_cliente_statu" do
    get admin_cliente_statu_url(@admin_cliente_statu)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_cliente_statu_url(@admin_cliente_statu)
    assert_response :success
  end

  test "should update admin_cliente_statu" do
    patch admin_cliente_statu_url(@admin_cliente_statu), params: { admin_cliente_statu: { status: @admin_cliente_statu.status } }
    assert_redirected_to admin_cliente_statu_url(@admin_cliente_statu)
  end

  test "should destroy admin_cliente_statu" do
    assert_difference('Admin::ClienteStatu.count', -1) do
      delete admin_cliente_statu_url(@admin_cliente_statu)
    end

    assert_redirected_to admin_cliente_status_url
  end
end
