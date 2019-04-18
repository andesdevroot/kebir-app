require 'test_helper'

class CostosVariablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @costos_variable = costos_variables(:one)
  end

  test "should get index" do
    get costos_variables_url
    assert_response :success
  end

  test "should get new" do
    get new_costos_variable_url
    assert_response :success
  end

  test "should create costos_variable" do
    assert_difference('CostosVariable.count') do
      post costos_variables_url, params: { costos_variable: { horas_logistica: @costos_variable.horas_logistica, localidad_consolidado: @costos_variable.localidad_consolidado, localidad_logistica: @costos_variable.localidad_logistica, localidad_stacking: @costos_variable.localidad_stacking, porcentaje_conductor: @costos_variable.porcentaje_conductor, servicio_kilometro: @costos_variable.servicio_kilometro, sueldo_conductor: @costos_variable.sueldo_conductor, valor_peajes: @costos_variable.valor_peajes, vitaico_kilometros: @costos_variable.vitaico_kilometros } }
    end

    assert_redirected_to costos_variable_url(CostosVariable.last)
  end

  test "should show costos_variable" do
    get costos_variable_url(@costos_variable)
    assert_response :success
  end

  test "should get edit" do
    get edit_costos_variable_url(@costos_variable)
    assert_response :success
  end

  test "should update costos_variable" do
    patch costos_variable_url(@costos_variable), params: { costos_variable: { horas_logistica: @costos_variable.horas_logistica, localidad_consolidado: @costos_variable.localidad_consolidado, localidad_logistica: @costos_variable.localidad_logistica, localidad_stacking: @costos_variable.localidad_stacking, porcentaje_conductor: @costos_variable.porcentaje_conductor, servicio_kilometro: @costos_variable.servicio_kilometro, sueldo_conductor: @costos_variable.sueldo_conductor, valor_peajes: @costos_variable.valor_peajes, vitaico_kilometros: @costos_variable.vitaico_kilometros } }
    assert_redirected_to costos_variable_url(@costos_variable)
  end

  test "should destroy costos_variable" do
    assert_difference('CostosVariable.count', -1) do
      delete costos_variable_url(@costos_variable)
    end

    assert_redirected_to costos_variables_url
  end
end
