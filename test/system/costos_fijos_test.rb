require "application_system_test_case"

class CostosFijosTest < ApplicationSystemTestCase
  setup do
    @costos_fijo = costos_fijos(:one)
  end

  test "visiting the index" do
    visit costos_fijos_url
    assert_selector "h1", text: "Costos Fijos"
  end

  test "creating a Costos fijo" do
    visit costos_fijos_url
    click_on "New Costos Fijo"

    fill_in "Cantidad movimiento mensual", with: @costos_fijo.cantidad_movimiento_mensual
    fill_in "Frecuencia movimiento", with: @costos_fijo.frecuencia_movimiento
    fill_in "Multiplividad tiempo movimiento", with: @costos_fijo.multiplividad_tiempo_movimiento
    click_on "Create Costos fijo"

    assert_text "Costos fijo was successfully created"
    click_on "Back"
  end

  test "updating a Costos fijo" do
    visit costos_fijos_url
    click_on "Edit", match: :first

    fill_in "Cantidad movimiento mensual", with: @costos_fijo.cantidad_movimiento_mensual
    fill_in "Frecuencia movimiento", with: @costos_fijo.frecuencia_movimiento
    fill_in "Multiplividad tiempo movimiento", with: @costos_fijo.multiplividad_tiempo_movimiento
    click_on "Update Costos fijo"

    assert_text "Costos fijo was successfully updated"
    click_on "Back"
  end

  test "destroying a Costos fijo" do
    visit costos_fijos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Costos fijo was successfully destroyed"
  end
end
