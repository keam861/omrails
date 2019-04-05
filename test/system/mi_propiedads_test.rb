require "application_system_test_case"

class MiPropiedadsTest < ApplicationSystemTestCase
  setup do
    @mi_propiedad = mi_propiedads(:one)
  end

  test "visiting the index" do
    visit mi_propiedads_url
    assert_selector "h1", text: "Mi Propiedads"
  end

  test "creating a Mi propiedad" do
    visit mi_propiedads_url
    click_on "New Mi Propiedad"

    fill_in "Año al que adquiri", with: @mi_propiedad.año_al_que_adquiri
    fill_in "Baños", with: @mi_propiedad.baños
    fill_in "Calle", with: @mi_propiedad.calle
    fill_in "Colonia", with: @mi_propiedad.colonia
    fill_in "Condiciones de la propiedad", with: @mi_propiedad.condiciones_de_la_propiedad
    check "En venta" if @mi_propiedad.en_venta
    fill_in "Entorno", with: @mi_propiedad.entorno
    fill_in "Estado", with: @mi_propiedad.estado
    fill_in "Habitaciones", with: @mi_propiedad.habitaciones
    fill_in "M2construccion", with: @mi_propiedad.m2construccion
    fill_in "M2terreno", with: @mi_propiedad.m2terreno
    fill_in "Municipio", with: @mi_propiedad.municipio
    fill_in "Numero", with: @mi_propiedad.numero
    fill_in "Plazo de venta", with: @mi_propiedad.plazo_de_venta
    fill_in "Precio al que adquiri", with: @mi_propiedad.precio_al_que_adquiri
    fill_in "Tipo de propiedad", with: @mi_propiedad.tipo_de_propiedad
    fill_in "User", with: @mi_propiedad.user_id
    click_on "Create Mi propiedad"

    assert_text "Mi propiedad was successfully created"
    click_on "Back"
  end

  test "updating a Mi propiedad" do
    visit mi_propiedads_url
    click_on "Edit", match: :first

    fill_in "Año al que adquiri", with: @mi_propiedad.año_al_que_adquiri
    fill_in "Baños", with: @mi_propiedad.baños
    fill_in "Calle", with: @mi_propiedad.calle
    fill_in "Colonia", with: @mi_propiedad.colonia
    fill_in "Condiciones de la propiedad", with: @mi_propiedad.condiciones_de_la_propiedad
    check "En venta" if @mi_propiedad.en_venta
    fill_in "Entorno", with: @mi_propiedad.entorno
    fill_in "Estado", with: @mi_propiedad.estado
    fill_in "Habitaciones", with: @mi_propiedad.habitaciones
    fill_in "M2construccion", with: @mi_propiedad.m2construccion
    fill_in "M2terreno", with: @mi_propiedad.m2terreno
    fill_in "Municipio", with: @mi_propiedad.municipio
    fill_in "Numero", with: @mi_propiedad.numero
    fill_in "Plazo de venta", with: @mi_propiedad.plazo_de_venta
    fill_in "Precio al que adquiri", with: @mi_propiedad.precio_al_que_adquiri
    fill_in "Tipo de propiedad", with: @mi_propiedad.tipo_de_propiedad
    fill_in "User", with: @mi_propiedad.user_id
    click_on "Update Mi propiedad"

    assert_text "Mi propiedad was successfully updated"
    click_on "Back"
  end

  test "destroying a Mi propiedad" do
    visit mi_propiedads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mi propiedad was successfully destroyed"
  end
end
