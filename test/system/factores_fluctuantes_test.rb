require "application_system_test_case"

class FactoresFluctuantesTest < ApplicationSystemTestCase
  setup do
    @factores_fluctuante = factores_fluctuantes(:one)
  end

  test "visiting the index" do
    visit factores_fluctuantes_url
    assert_selector "h1", text: "Factores Fluctuantes"
  end

  test "creating a Factores fluctuante" do
    visit factores_fluctuantes_url
    click_on "New Factores Fluctuante"

    fill_in "Peso carga", with: @factores_fluctuante.peso_carga
    click_on "Create Factores fluctuante"

    assert_text "Factores fluctuante was successfully created"
    click_on "Back"
  end

  test "updating a Factores fluctuante" do
    visit factores_fluctuantes_url
    click_on "Edit", match: :first

    fill_in "Peso carga", with: @factores_fluctuante.peso_carga
    click_on "Update Factores fluctuante"

    assert_text "Factores fluctuante was successfully updated"
    click_on "Back"
  end

  test "destroying a Factores fluctuante" do
    visit factores_fluctuantes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Factores fluctuante was successfully destroyed"
  end
end
