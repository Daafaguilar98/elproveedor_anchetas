require 'test_helper'

class AnchetaControllerTest < ActionController::TestCase
  setup do
    @anchetum = ancheta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ancheta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anchetum" do
    assert_difference('Anchetum.count') do
      post :create, anchetum: { ancheta: @anchetum.ancheta, celular: @anchetum.celular, direccion: @anchetum.direccion, nombre: @anchetum.nombre }
    end

    assert_redirected_to anchetum_path(assigns(:anchetum))
  end

  test "should show anchetum" do
    get :show, id: @anchetum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anchetum
    assert_response :success
  end

  test "should update anchetum" do
    patch :update, id: @anchetum, anchetum: { ancheta: @anchetum.ancheta, celular: @anchetum.celular, direccion: @anchetum.direccion, nombre: @anchetum.nombre }
    assert_redirected_to anchetum_path(assigns(:anchetum))
  end

  test "should destroy anchetum" do
    assert_difference('Anchetum.count', -1) do
      delete :destroy, id: @anchetum
    end

    assert_redirected_to ancheta_path
  end
end
