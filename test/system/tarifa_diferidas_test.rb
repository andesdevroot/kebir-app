require "application_system_test_case"

class TarifaDiferidasTest < ApplicationSystemTestCase
  setup do
    @tarifa_diferida = tarifa_diferidas(:one)
  end

  test "visiting the index" do
    visit tarifa_diferidas_url
    assert_selector "h1", text: "Tarifa Diferidas"
  end

  test "creating a Tarifa diferida" do
    visit tarifa_diferidas_url
    click_on "New Tarifa Diferida"

    fill_in "Peso hora", with: @tarifa_diferida.peso_hora
    fill_in "Peso kilometro", with: @tarifa_diferida.peso_kilometro
    fill_in "Peso tonelada", with: @tarifa_diferida.peso_tonelada
    click_on "Create Tarifa diferida"

    assert_text "Tarifa diferida was successfully created"
    click_on "Back"
  end

  test "updating a Tarifa diferida" do
    visit tarifa_diferidas_url
    click_on "Edit", match: :first

    fill_in "Peso hora", with: @tarifa_diferida.peso_hora
    fill_in "Peso kilometro", with: @tarifa_diferida.peso_kilometro
    fill_in "Peso tonelada", with: @tarifa_diferida.peso_tonelada
    click_on "Update Tarifa diferida"

    assert_text "Tarifa diferida was successfully updated"
    click_on "Back"
  end

  test "destroying a Tarifa diferida" do
    visit tarifa_diferidas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tarifa diferida was successfully destroyed"
  end
end
