require "application_system_test_case"

class CostosVariablesTest < ApplicationSystemTestCase
  setup do
    @costos_variable = costos_variables(:one)
  end

  test "visiting the index" do
    visit costos_variables_url
    assert_selector "h1", text: "Costos Variables"
  end

  test "creating a Costos variable" do
    visit costos_variables_url
    click_on "New Costos Variable"

    fill_in "Horas logistica", with: @costos_variable.horas_logistica
    fill_in "Localidad consolidado", with: @costos_variable.localidad_consolidado
    fill_in "Localidad logistica", with: @costos_variable.localidad_logistica
    fill_in "Localidad stacking", with: @costos_variable.localidad_stacking
    fill_in "Porcentaje conductor", with: @costos_variable.porcentaje_conductor
    fill_in "Servicio kilometro", with: @costos_variable.servicio_kilometro
    fill_in "Sueldo conductor", with: @costos_variable.sueldo_conductor
    fill_in "Valor peajes", with: @costos_variable.valor_peajes
    fill_in "Vitaico kilometros", with: @costos_variable.vitaico_kilometros
    click_on "Create Costos variable"

    assert_text "Costos variable was successfully created"
    click_on "Back"
  end

  test "updating a Costos variable" do
    visit costos_variables_url
    click_on "Edit", match: :first

    fill_in "Horas logistica", with: @costos_variable.horas_logistica
    fill_in "Localidad consolidado", with: @costos_variable.localidad_consolidado
    fill_in "Localidad logistica", with: @costos_variable.localidad_logistica
    fill_in "Localidad stacking", with: @costos_variable.localidad_stacking
    fill_in "Porcentaje conductor", with: @costos_variable.porcentaje_conductor
    fill_in "Servicio kilometro", with: @costos_variable.servicio_kilometro
    fill_in "Sueldo conductor", with: @costos_variable.sueldo_conductor
    fill_in "Valor peajes", with: @costos_variable.valor_peajes
    fill_in "Vitaico kilometros", with: @costos_variable.vitaico_kilometros
    click_on "Update Costos variable"

    assert_text "Costos variable was successfully updated"
    click_on "Back"
  end

  test "destroying a Costos variable" do
    visit costos_variables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Costos variable was successfully destroyed"
  end
end
