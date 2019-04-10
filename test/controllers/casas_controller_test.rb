require 'test_helper'

class CasasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @casa = casas(:one)
  end

  test "should get index" do
    get casas_url
    assert_response :success
  end

  test "should get new" do
    get new_casa_url
    assert_response :success
  end

  test "should create casa" do
    assert_difference('Casa.count') do
      post casas_url, params: { casa: { baños: @casa.baños, calle: @casa.calle, colonia: @casa.colonia, entorno: @casa.entorno, estado: @casa.estado, habitaciones: @casa.habitaciones, inmobiliaria: @casa.inmobiliaria, m2construccion: @casa.m2construccion, m2terreno: @casa.m2terreno, municipio: @casa.municipio, precioask: @casa.precioask, tipo_de_propiedad: @casa.tipo_de_propiedad, user_id: @casa.user_id } }
    end

    assert_redirected_to casa_url(Casa.last)
  end

  test "should show casa" do
    get casa_url(@casa)
    assert_response :success
  end

  test "should get edit" do
    get edit_casa_url(@casa)
    assert_response :success
  end

  test "should update casa" do
    patch casa_url(@casa), params: { casa: { baños: @casa.baños, calle: @casa.calle, colonia: @casa.colonia, entorno: @casa.entorno, estado: @casa.estado, habitaciones: @casa.habitaciones, inmobiliaria: @casa.inmobiliaria, m2construccion: @casa.m2construccion, m2terreno: @casa.m2terreno, municipio: @casa.municipio, precioask: @casa.precioask, tipo_de_propiedad: @casa.tipo_de_propiedad, user_id: @casa.user_id } }
    assert_redirected_to casa_url(@casa)
  end

  test "should destroy casa" do
    assert_difference('Casa.count', -1) do
      delete casa_url(@casa)
    end

    assert_redirected_to casas_url
  end
end
