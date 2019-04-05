require 'test_helper'

class MiPropiedadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mi_propiedad = mi_propiedads(:one)
  end

  test "should get index" do
    get mi_propiedads_url
    assert_response :success
  end

  test "should get new" do
    get new_mi_propiedad_url
    assert_response :success
  end

  test "should create mi_propiedad" do
    assert_difference('MiPropiedad.count') do
      post mi_propiedads_url, params: { mi_propiedad: { año_al_que_adquiri: @mi_propiedad.año_al_que_adquiri, baños: @mi_propiedad.baños, calle: @mi_propiedad.calle, colonia: @mi_propiedad.colonia, condiciones_de_la_propiedad: @mi_propiedad.condiciones_de_la_propiedad, en_venta: @mi_propiedad.en_venta, entorno: @mi_propiedad.entorno, estado: @mi_propiedad.estado, habitaciones: @mi_propiedad.habitaciones, m2construccion: @mi_propiedad.m2construccion, m2terreno: @mi_propiedad.m2terreno, municipio: @mi_propiedad.municipio, numero: @mi_propiedad.numero, plazo_de_venta: @mi_propiedad.plazo_de_venta, precio_al_que_adquiri: @mi_propiedad.precio_al_que_adquiri, tipo_de_propiedad: @mi_propiedad.tipo_de_propiedad, user_id: @mi_propiedad.user_id } }
    end

    assert_redirected_to mi_propiedad_url(MiPropiedad.last)
  end

  test "should show mi_propiedad" do
    get mi_propiedad_url(@mi_propiedad)
    assert_response :success
  end

  test "should get edit" do
    get edit_mi_propiedad_url(@mi_propiedad)
    assert_response :success
  end

  test "should update mi_propiedad" do
    patch mi_propiedad_url(@mi_propiedad), params: { mi_propiedad: { año_al_que_adquiri: @mi_propiedad.año_al_que_adquiri, baños: @mi_propiedad.baños, calle: @mi_propiedad.calle, colonia: @mi_propiedad.colonia, condiciones_de_la_propiedad: @mi_propiedad.condiciones_de_la_propiedad, en_venta: @mi_propiedad.en_venta, entorno: @mi_propiedad.entorno, estado: @mi_propiedad.estado, habitaciones: @mi_propiedad.habitaciones, m2construccion: @mi_propiedad.m2construccion, m2terreno: @mi_propiedad.m2terreno, municipio: @mi_propiedad.municipio, numero: @mi_propiedad.numero, plazo_de_venta: @mi_propiedad.plazo_de_venta, precio_al_que_adquiri: @mi_propiedad.precio_al_que_adquiri, tipo_de_propiedad: @mi_propiedad.tipo_de_propiedad, user_id: @mi_propiedad.user_id } }
    assert_redirected_to mi_propiedad_url(@mi_propiedad)
  end

  test "should destroy mi_propiedad" do
    assert_difference('MiPropiedad.count', -1) do
      delete mi_propiedad_url(@mi_propiedad)
    end

    assert_redirected_to mi_propiedads_url
  end
end
