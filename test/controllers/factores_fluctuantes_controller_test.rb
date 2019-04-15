require 'test_helper'

class FactoresFluctuantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @factores_fluctuante = factores_fluctuantes(:one)
  end

  test "should get index" do
    get factores_fluctuantes_url
    assert_response :success
  end

  test "should get new" do
    get new_factores_fluctuante_url
    assert_response :success
  end

  test "should create factores_fluctuante" do
    assert_difference('FactoresFluctuante.count') do
      post factores_fluctuantes_url, params: { factores_fluctuante: { peso_carga: @factores_fluctuante.peso_carga } }
    end

    assert_redirected_to factores_fluctuante_url(FactoresFluctuante.last)
  end

  test "should show factores_fluctuante" do
    get factores_fluctuante_url(@factores_fluctuante)
    assert_response :success
  end

  test "should get edit" do
    get edit_factores_fluctuante_url(@factores_fluctuante)
    assert_response :success
  end

  test "should update factores_fluctuante" do
    patch factores_fluctuante_url(@factores_fluctuante), params: { factores_fluctuante: { peso_carga: @factores_fluctuante.peso_carga } }
    assert_redirected_to factores_fluctuante_url(@factores_fluctuante)
  end

  test "should destroy factores_fluctuante" do
    assert_difference('FactoresFluctuante.count', -1) do
      delete factores_fluctuante_url(@factores_fluctuante)
    end

    assert_redirected_to factores_fluctuantes_url
  end
end
