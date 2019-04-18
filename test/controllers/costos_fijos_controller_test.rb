require 'test_helper'

class CostosFijosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @costos_fijo = costos_fijos(:one)
  end

  test "should get index" do
    get costos_fijos_url
    assert_response :success
  end

  test "should get new" do
    get new_costos_fijo_url
    assert_response :success
  end

  test "should create costos_fijo" do
    assert_difference('CostosFijo.count') do
      post costos_fijos_url, params: { costos_fijo: { cantidad_movimiento_mensual: @costos_fijo.cantidad_movimiento_mensual, frecuencia_movimiento: @costos_fijo.frecuencia_movimiento, multiplividad_tiempo_movimiento: @costos_fijo.multiplividad_tiempo_movimiento } }
    end

    assert_redirected_to costos_fijo_url(CostosFijo.last)
  end

  test "should show costos_fijo" do
    get costos_fijo_url(@costos_fijo)
    assert_response :success
  end

  test "should get edit" do
    get edit_costos_fijo_url(@costos_fijo)
    assert_response :success
  end

  test "should update costos_fijo" do
    patch costos_fijo_url(@costos_fijo), params: { costos_fijo: { cantidad_movimiento_mensual: @costos_fijo.cantidad_movimiento_mensual, frecuencia_movimiento: @costos_fijo.frecuencia_movimiento, multiplividad_tiempo_movimiento: @costos_fijo.multiplividad_tiempo_movimiento } }
    assert_redirected_to costos_fijo_url(@costos_fijo)
  end

  test "should destroy costos_fijo" do
    assert_difference('CostosFijo.count', -1) do
      delete costos_fijo_url(@costos_fijo)
    end

    assert_redirected_to costos_fijos_url
  end
end
