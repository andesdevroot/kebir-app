require 'test_helper'

class TarifaHoraLogisticasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tarifa_hora_logistica = tarifa_hora_logisticas(:one)
  end

  test "should get index" do
    get tarifa_hora_logisticas_url
    assert_response :success
  end

  test "should get new" do
    get new_tarifa_hora_logistica_url
    assert_response :success
  end

  test "should create tarifa_hora_logistica" do
    assert_difference('TarifaHoraLogistica.count') do
      post tarifa_hora_logisticas_url, params: { tarifa_hora_logistica: { impuestos_derechos: @tarifa_hora_logistica.impuestos_derechos, nivel_utilidades: @tarifa_hora_logistica.nivel_utilidades, valor_dolar: @tarifa_hora_logistica.valor_dolar, variacion_inversion: @tarifa_hora_logistica.variacion_inversion, variacion_mano_obra: @tarifa_hora_logistica.variacion_mano_obra, variacion_materia_prima: @tarifa_hora_logistica.variacion_materia_prima, varicion_financiera: @tarifa_hora_logistica.varicion_financiera } }
    end

    assert_redirected_to tarifa_hora_logistica_url(TarifaHoraLogistica.last)
  end

  test "should show tarifa_hora_logistica" do
    get tarifa_hora_logistica_url(@tarifa_hora_logistica)
    assert_response :success
  end

  test "should get edit" do
    get edit_tarifa_hora_logistica_url(@tarifa_hora_logistica)
    assert_response :success
  end

  test "should update tarifa_hora_logistica" do
    patch tarifa_hora_logistica_url(@tarifa_hora_logistica), params: { tarifa_hora_logistica: { impuestos_derechos: @tarifa_hora_logistica.impuestos_derechos, nivel_utilidades: @tarifa_hora_logistica.nivel_utilidades, valor_dolar: @tarifa_hora_logistica.valor_dolar, variacion_inversion: @tarifa_hora_logistica.variacion_inversion, variacion_mano_obra: @tarifa_hora_logistica.variacion_mano_obra, variacion_materia_prima: @tarifa_hora_logistica.variacion_materia_prima, varicion_financiera: @tarifa_hora_logistica.varicion_financiera } }
    assert_redirected_to tarifa_hora_logistica_url(@tarifa_hora_logistica)
  end

  test "should destroy tarifa_hora_logistica" do
    assert_difference('TarifaHoraLogistica.count', -1) do
      delete tarifa_hora_logistica_url(@tarifa_hora_logistica)
    end

    assert_redirected_to tarifa_hora_logisticas_url
  end
end
