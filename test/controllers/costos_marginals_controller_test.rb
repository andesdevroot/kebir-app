require 'test_helper'

class CostosMarginalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @costos_marginal = costos_marginals(:one)
  end

  test "should get index" do
    get costos_marginals_url
    assert_response :success
  end

  test "should get new" do
    get new_costos_marginal_url
    assert_response :success
  end

  test "should create costos_marginal" do
    assert_difference('CostosMarginal.count') do
      post costos_marginals_url, params: { costos_marginal: { cifra_negocio: @costos_marginal.cifra_negocio, contingencia_administrativa: @costos_marginal.contingencia_administrativa, contingencia_operacional: @costos_marginal.contingencia_operacional, contingencia_produccion: @costos_marginal.contingencia_produccion, gasto_finaciero: @costos_marginal.gasto_finaciero, promocion_venta: @costos_marginal.promocion_venta } }
    end

    assert_redirected_to costos_marginal_url(CostosMarginal.last)
  end

  test "should show costos_marginal" do
    get costos_marginal_url(@costos_marginal)
    assert_response :success
  end

  test "should get edit" do
    get edit_costos_marginal_url(@costos_marginal)
    assert_response :success
  end

  test "should update costos_marginal" do
    patch costos_marginal_url(@costos_marginal), params: { costos_marginal: { cifra_negocio: @costos_marginal.cifra_negocio, contingencia_administrativa: @costos_marginal.contingencia_administrativa, contingencia_operacional: @costos_marginal.contingencia_operacional, contingencia_produccion: @costos_marginal.contingencia_produccion, gasto_finaciero: @costos_marginal.gasto_finaciero, promocion_venta: @costos_marginal.promocion_venta } }
    assert_redirected_to costos_marginal_url(@costos_marginal)
  end

  test "should destroy costos_marginal" do
    assert_difference('CostosMarginal.count', -1) do
      delete costos_marginal_url(@costos_marginal)
    end

    assert_redirected_to costos_marginals_url
  end
end
