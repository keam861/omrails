require 'test_helper'

class ReporteMiPropiedadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reporte_mi_propiedad = reporte_mi_propiedads(:one)
  end

  test "should get index" do
    get reporte_mi_propiedads_url
    assert_response :success
  end

  test "should get new" do
    get new_reporte_mi_propiedad_url
    assert_response :success
  end

  test "should create reporte_mi_propiedad" do
    assert_difference('ReporteMiPropiedad.count') do
      post reporte_mi_propiedads_url, params: { reporte_mi_propiedad: { años_de_analisis: @reporte_mi_propiedad.años_de_analisis, años_de_proyeccion: @reporte_mi_propiedad.años_de_proyeccion, mi_propiedad_id: @reporte_mi_propiedad.mi_propiedad_id, plusvalia_colonia: @reporte_mi_propiedad.plusvalia_colonia, plusvalia_estatal: @reporte_mi_propiedad.plusvalia_estatal, plusvalia_historica: @reporte_mi_propiedad.plusvalia_historica, plusvalia_municipio: @reporte_mi_propiedad.plusvalia_municipio, precio_askhigh: @reporte_mi_propiedad.precio_askhigh, precio_bidlow: @reporte_mi_propiedad.precio_bidlow, precio_midprice: @reporte_mi_propiedad.precio_midprice, proyeccion_plusvalia: @reporte_mi_propiedad.proyeccion_plusvalia, tipo_de_demanda: @reporte_mi_propiedad.tipo_de_demanda } }
    end

    assert_redirected_to reporte_mi_propiedad_url(ReporteMiPropiedad.last)
  end

  test "should show reporte_mi_propiedad" do
    get reporte_mi_propiedad_url(@reporte_mi_propiedad)
    assert_response :success
  end

  test "should get edit" do
    get edit_reporte_mi_propiedad_url(@reporte_mi_propiedad)
    assert_response :success
  end

  test "should update reporte_mi_propiedad" do
    patch reporte_mi_propiedad_url(@reporte_mi_propiedad), params: { reporte_mi_propiedad: { años_de_analisis: @reporte_mi_propiedad.años_de_analisis, años_de_proyeccion: @reporte_mi_propiedad.años_de_proyeccion, mi_propiedad_id: @reporte_mi_propiedad.mi_propiedad_id, plusvalia_colonia: @reporte_mi_propiedad.plusvalia_colonia, plusvalia_estatal: @reporte_mi_propiedad.plusvalia_estatal, plusvalia_historica: @reporte_mi_propiedad.plusvalia_historica, plusvalia_municipio: @reporte_mi_propiedad.plusvalia_municipio, precio_askhigh: @reporte_mi_propiedad.precio_askhigh, precio_bidlow: @reporte_mi_propiedad.precio_bidlow, precio_midprice: @reporte_mi_propiedad.precio_midprice, proyeccion_plusvalia: @reporte_mi_propiedad.proyeccion_plusvalia, tipo_de_demanda: @reporte_mi_propiedad.tipo_de_demanda } }
    assert_redirected_to reporte_mi_propiedad_url(@reporte_mi_propiedad)
  end

  test "should destroy reporte_mi_propiedad" do
    assert_difference('ReporteMiPropiedad.count', -1) do
      delete reporte_mi_propiedad_url(@reporte_mi_propiedad)
    end

    assert_redirected_to reporte_mi_propiedads_url
  end
end
