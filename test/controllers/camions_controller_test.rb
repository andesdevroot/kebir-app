require 'test_helper'

class CamionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @camion = camions(:one)
  end

  test "should get index" do
    get camions_url
    assert_response :success
  end

  test "should get new" do
    get new_camion_url
    assert_response :success
  end

  test "should create camion" do
    assert_difference('Camion.count') do
      post camions_url, params: { camion: { peso_carga: @camion.peso_carga } }
    end

    assert_redirected_to camion_url(Camion.last)
  end

  test "should show camion" do
    get camion_url(@camion)
    assert_response :success
  end

  test "should get edit" do
    get edit_camion_url(@camion)
    assert_response :success
  end

  test "should update camion" do
    patch camion_url(@camion), params: { camion: { peso_carga: @camion.peso_carga } }
    assert_redirected_to camion_url(@camion)
  end

  test "should destroy camion" do
    assert_difference('Camion.count', -1) do
      delete camion_url(@camion)
    end

    assert_redirected_to camions_url
  end
end
