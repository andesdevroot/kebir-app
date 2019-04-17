require 'test_helper'

class TarifaDiferidasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tarifa_diferida = tarifa_diferidas(:one)
  end

  test "should get index" do
    get tarifa_diferidas_url
    assert_response :success
  end

  test "should get new" do
    get new_tarifa_diferida_url
    assert_response :success
  end

  test "should create tarifa_diferida" do
    assert_difference('TarifaDiferida.count') do
      post tarifa_diferidas_url, params: { tarifa_diferida: { peso_hora: @tarifa_diferida.peso_hora, peso_kilometro: @tarifa_diferida.peso_kilometro, peso_tonelada: @tarifa_diferida.peso_tonelada } }
    end

    assert_redirected_to tarifa_diferida_url(TarifaDiferida.last)
  end

  test "should show tarifa_diferida" do
    get tarifa_diferida_url(@tarifa_diferida)
    assert_response :success
  end

  test "should get edit" do
    get edit_tarifa_diferida_url(@tarifa_diferida)
    assert_response :success
  end

  test "should update tarifa_diferida" do
    patch tarifa_diferida_url(@tarifa_diferida), params: { tarifa_diferida: { peso_hora: @tarifa_diferida.peso_hora, peso_kilometro: @tarifa_diferida.peso_kilometro, peso_tonelada: @tarifa_diferida.peso_tonelada } }
    assert_redirected_to tarifa_diferida_url(@tarifa_diferida)
  end

  test "should destroy tarifa_diferida" do
    assert_difference('TarifaDiferida.count', -1) do
      delete tarifa_diferida_url(@tarifa_diferida)
    end

    assert_redirected_to tarifa_diferidas_url
  end
end
