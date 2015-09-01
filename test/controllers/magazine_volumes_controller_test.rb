require 'test_helper'

class MagazineVolumesControllerTest < ActionController::TestCase
  setup do
    @magazine_volume = magazine_volumes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:magazine_volumes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create magazine_volume" do
    assert_difference('MagazineVolume.count') do
      post :create, magazine_volume: { number: @magazine_volume.number, published: @magazine_volume.published }
    end

    assert_redirected_to magazine_volume_path(assigns(:magazine_volume))
  end

  test "should show magazine_volume" do
    get :show, id: @magazine_volume
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @magazine_volume
    assert_response :success
  end

  test "should update magazine_volume" do
    patch :update, id: @magazine_volume, magazine_volume: { number: @magazine_volume.number, published: @magazine_volume.published }
    assert_redirected_to magazine_volume_path(assigns(:magazine_volume))
  end

  test "should destroy magazine_volume" do
    assert_difference('MagazineVolume.count', -1) do
      delete :destroy, id: @magazine_volume
    end

    assert_redirected_to magazine_volumes_path
  end
end
