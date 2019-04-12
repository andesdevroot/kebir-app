require "application_system_test_case"

class CamionsTest < ApplicationSystemTestCase
  setup do
    @camion = camions(:one)
  end

  test "visiting the index" do
    visit camions_url
    assert_selector "h1", text: "Camions"
  end

  test "creating a Camion" do
    visit camions_url
    click_on "New Camion"

    fill_in "Peso carga", with: @camion.peso_carga
    click_on "Create Camion"

    assert_text "Camion was successfully created"
    click_on "Back"
  end

  test "updating a Camion" do
    visit camions_url
    click_on "Edit", match: :first

    fill_in "Peso carga", with: @camion.peso_carga
    click_on "Update Camion"

    assert_text "Camion was successfully updated"
    click_on "Back"
  end

  test "destroying a Camion" do
    visit camions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Camion was successfully destroyed"
  end
end
