require "application_system_test_case"

class ReporteMiPropiedadsTest < ApplicationSystemTestCase
  setup do
    @reporte_mi_propiedad = reporte_mi_propiedads(:one)
  end

  test "visiting the index" do
    visit reporte_mi_propiedads_url
    assert_selector "h1", text: "Reporte Mi Propiedads"
  end

  test "creating a Reporte mi propiedad" do
    visit reporte_mi_propiedads_url
    click_on "New Reporte Mi Propiedad"

    fill_in "Años de analisis", with: @reporte_mi_propiedad.años_de_analisis
    fill_in "Años de proyeccion", with: @reporte_mi_propiedad.años_de_proyeccion
    fill_in "Mi propiedad", with: @reporte_mi_propiedad.mi_propiedad_id
    fill_in "Plusvalia colonia", with: @reporte_mi_propiedad.plusvalia_colonia
    fill_in "Plusvalia estatal", with: @reporte_mi_propiedad.plusvalia_estatal
    fill_in "Plusvalia historica", with: @reporte_mi_propiedad.plusvalia_historica
    fill_in "Plusvalia municipio", with: @reporte_mi_propiedad.plusvalia_municipio
    fill_in "Precio askhigh", with: @reporte_mi_propiedad.precio_askhigh
    fill_in "Precio bidlow", with: @reporte_mi_propiedad.precio_bidlow
    fill_in "Precio midprice", with: @reporte_mi_propiedad.precio_midprice
    fill_in "Proyeccion plusvalia", with: @reporte_mi_propiedad.proyeccion_plusvalia
    fill_in "Tipo de demanda", with: @reporte_mi_propiedad.tipo_de_demanda
    click_on "Create Reporte mi propiedad"

    assert_text "Reporte mi propiedad was successfully created"
    click_on "Back"
  end

  test "updating a Reporte mi propiedad" do
    visit reporte_mi_propiedads_url
    click_on "Edit", match: :first

    fill_in "Años de analisis", with: @reporte_mi_propiedad.años_de_analisis
    fill_in "Años de proyeccion", with: @reporte_mi_propiedad.años_de_proyeccion
    fill_in "Mi propiedad", with: @reporte_mi_propiedad.mi_propiedad_id
    fill_in "Plusvalia colonia", with: @reporte_mi_propiedad.plusvalia_colonia
    fill_in "Plusvalia estatal", with: @reporte_mi_propiedad.plusvalia_estatal
    fill_in "Plusvalia historica", with: @reporte_mi_propiedad.plusvalia_historica
    fill_in "Plusvalia municipio", with: @reporte_mi_propiedad.plusvalia_municipio
    fill_in "Precio askhigh", with: @reporte_mi_propiedad.precio_askhigh
    fill_in "Precio bidlow", with: @reporte_mi_propiedad.precio_bidlow
    fill_in "Precio midprice", with: @reporte_mi_propiedad.precio_midprice
    fill_in "Proyeccion plusvalia", with: @reporte_mi_propiedad.proyeccion_plusvalia
    fill_in "Tipo de demanda", with: @reporte_mi_propiedad.tipo_de_demanda
    click_on "Update Reporte mi propiedad"

    assert_text "Reporte mi propiedad was successfully updated"
    click_on "Back"
  end

  test "destroying a Reporte mi propiedad" do
    visit reporte_mi_propiedads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reporte mi propiedad was successfully destroyed"
  end
end
