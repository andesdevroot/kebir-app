require "application_system_test_case"

class CostosMarginalsTest < ApplicationSystemTestCase
  setup do
    @costos_marginal = costos_marginals(:one)
  end

  test "visiting the index" do
    visit costos_marginals_url
    assert_selector "h1", text: "Costos Marginals"
  end

  test "creating a Costos marginal" do
    visit costos_marginals_url
    click_on "New Costos Marginal"

    fill_in "Cifra negocio", with: @costos_marginal.cifra_negocio
    fill_in "Contingencia administrativa", with: @costos_marginal.contingencia_administrativa
    fill_in "Contingencia operacional", with: @costos_marginal.contingencia_operacional
    fill_in "Contingencia produccion", with: @costos_marginal.contingencia_produccion
    fill_in "Gasto finaciero", with: @costos_marginal.gasto_finaciero
    fill_in "Promocion venta", with: @costos_marginal.promocion_venta
    click_on "Create Costos marginal"

    assert_text "Costos marginal was successfully created"
    click_on "Back"
  end

  test "updating a Costos marginal" do
    visit costos_marginals_url
    click_on "Edit", match: :first

    fill_in "Cifra negocio", with: @costos_marginal.cifra_negocio
    fill_in "Contingencia administrativa", with: @costos_marginal.contingencia_administrativa
    fill_in "Contingencia operacional", with: @costos_marginal.contingencia_operacional
    fill_in "Contingencia produccion", with: @costos_marginal.contingencia_produccion
    fill_in "Gasto finaciero", with: @costos_marginal.gasto_finaciero
    fill_in "Promocion venta", with: @costos_marginal.promocion_venta
    click_on "Update Costos marginal"

    assert_text "Costos marginal was successfully updated"
    click_on "Back"
  end

  test "destroying a Costos marginal" do
    visit costos_marginals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Costos marginal was successfully destroyed"
  end
end
