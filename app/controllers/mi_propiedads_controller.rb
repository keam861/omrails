class MiPropiedadsController < ApplicationController
  before_action :authenticate_user!

  # GET /mi_propiedads
  def index
    @mi_propiedads = current_user.mi_propiedads.all
  end

  # GET /mi_propiedads/1
  def show
    @mi_propiedad = current_user.mi_propiedads.find(params[:id])
  end

  # GET /mi_propiedads/new
  def new
    @mi_propiedad = current_user.mi_propiedads.new
  end

  # GET /mi_propiedads/1/edit
  def edit
    @mi_propiedad = current_user.mi_propiedads.find(params[:id])
  end

  # POST /mi_propiedads
  def create
    @mi_propiedad = current_user.mi_propiedads.new(mi_propiedad_params)
    if @mi_propiedad.save
      redirect_to @mi_propiedad, notice: 'Mi propiedad was successfully created.' 
    else
        render :new 
    end
  end

  def update
    @mi_propiedad = current_user.mi_propiedads.find(params[:id])
      if @mi_propiedad.update(mi_propiedad_params)
        redirect_to @mi_propiedad, notice: 'Mi propiedad was successfully updated.' 
      else
        render :edit 
      end
  end

  def destroy
    @mi_propiedad = current_user.mi_propiedads.find(params[:id])
    @mi_propiedad.destroy
      redirect_to mi_propiedads_url, notice: 'Mi propiedad was successfully destroyed.' 
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def mi_propiedad_params
      params.require(:mi_propiedad).permit(:estado, :municipio, :colonia, :calle, :numero, :tipo_de_propiedad, :m2terreno, :m2construccion, :baños, :habitaciones, :entorno, :condiciones_de_la_propiedad, :precio_al_que_adquiri, :año_al_que_adquiri, :en_venta, :plazo_de_venta, images: [], uploads: [])
    end
end











