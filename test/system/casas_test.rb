require "application_system_test_case"

class CasasTest < ApplicationSystemTestCase
  setup do
    @casa = casas(:one)
  end

  test "visiting the index" do
    visit casas_url
    assert_selector "h1", text: "Casas"
  end

  test "creating a Casa" do
    visit casas_url
    click_on "New Casa"

    fill_in "Baños", with: @casa.baños
    fill_in "Calle", with: @casa.calle
    fill_in "Colonia", with: @casa.colonia
    fill_in "Entorno", with: @casa.entorno
    fill_in "Estado", with: @casa.estado
    fill_in "Habitaciones", with: @casa.habitaciones
    check "Inmobiliaria" if @casa.inmobiliaria
    fill_in "M2construccion", with: @casa.m2construccion
    fill_in "M2terreno", with: @casa.m2terreno
    fill_in "Municipio", with: @casa.municipio
    fill_in "Precioask", with: @casa.precioask
    fill_in "Tipo de propiedad", with: @casa.tipo_de_propiedad
    fill_in "User", with: @casa.user_id
    click_on "Create Casa"

    assert_text "Casa was successfully created"
    click_on "Back"
  end

  test "updating a Casa" do
    visit casas_url
    click_on "Edit", match: :first

    fill_in "Baños", with: @casa.baños
    fill_in "Calle", with: @casa.calle
    fill_in "Colonia", with: @casa.colonia
    fill_in "Entorno", with: @casa.entorno
    fill_in "Estado", with: @casa.estado
    fill_in "Habitaciones", with: @casa.habitaciones
    check "Inmobiliaria" if @casa.inmobiliaria
    fill_in "M2construccion", with: @casa.m2construccion
    fill_in "M2terreno", with: @casa.m2terreno
    fill_in "Municipio", with: @casa.municipio
    fill_in "Precioask", with: @casa.precioask
    fill_in "Tipo de propiedad", with: @casa.tipo_de_propiedad
    fill_in "User", with: @casa.user_id
    click_on "Update Casa"

    assert_text "Casa was successfully updated"
    click_on "Back"
  end

  test "destroying a Casa" do
    visit casas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Casa was successfully destroyed"
  end
end
