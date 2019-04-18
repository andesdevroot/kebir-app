require "application_system_test_case"

class TarifaHoraLogisticasTest < ApplicationSystemTestCase
  setup do
    @tarifa_hora_logistica = tarifa_hora_logisticas(:one)
  end

  test "visiting the index" do
    visit tarifa_hora_logisticas_url
    assert_selector "h1", text: "Tarifa Hora Logisticas"
  end

  test "creating a Tarifa hora logistica" do
    visit tarifa_hora_logisticas_url
    click_on "New Tarifa Hora Logistica"

    fill_in "Impuestos derechos", with: @tarifa_hora_logistica.impuestos_derechos
    fill_in "Nivel utilidades", with: @tarifa_hora_logistica.nivel_utilidades
    fill_in "Valor dolar", with: @tarifa_hora_logistica.valor_dolar
    fill_in "Variacion inversion", with: @tarifa_hora_logistica.variacion_inversion
    fill_in "Variacion mano obra", with: @tarifa_hora_logistica.variacion_mano_obra
    fill_in "Variacion materia prima", with: @tarifa_hora_logistica.variacion_materia_prima
    fill_in "Varicion financiera", with: @tarifa_hora_logistica.varicion_financiera
    click_on "Create Tarifa hora logistica"

    assert_text "Tarifa hora logistica was successfully created"
    click_on "Back"
  end

  test "updating a Tarifa hora logistica" do
    visit tarifa_hora_logisticas_url
    click_on "Edit", match: :first

    fill_in "Impuestos derechos", with: @tarifa_hora_logistica.impuestos_derechos
    fill_in "Nivel utilidades", with: @tarifa_hora_logistica.nivel_utilidades
    fill_in "Valor dolar", with: @tarifa_hora_logistica.valor_dolar
    fill_in "Variacion inversion", with: @tarifa_hora_logistica.variacion_inversion
    fill_in "Variacion mano obra", with: @tarifa_hora_logistica.variacion_mano_obra
    fill_in "Variacion materia prima", with: @tarifa_hora_logistica.variacion_materia_prima
    fill_in "Varicion financiera", with: @tarifa_hora_logistica.varicion_financiera
    click_on "Update Tarifa hora logistica"

    assert_text "Tarifa hora logistica was successfully updated"
    click_on "Back"
  end

  test "destroying a Tarifa hora logistica" do
    visit tarifa_hora_logisticas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tarifa hora logistica was successfully destroyed"
  end
end
