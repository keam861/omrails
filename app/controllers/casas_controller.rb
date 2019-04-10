class CasasController < ApplicationController
  before_action :authenticate_user!

  # GET /casas
  def index
    @casas = current_user.casas.all
  end

  # GET /casas/1
  def show
    @casa = current_user.casas.find(params[:id])
  end

  # GET /casas/new
  def new
    @casa = current_user.casas.new
  end

  # GET /casas/1/edit
  def edit
    @casa = current_user.casas.find(params[:id])
  end

  # POST /casas
  def create
    @casa = current_user.casas.new(casa_params)
      if @casa.save
        redirect_to @casa, notice: 'Casa was successfully created.' 
      else
        render :new 
      end
  end

  # PATCH/PUT /casas/1
  def update
    @casa = current_user.casas.find(params[:id])
      if @casa.update(casa_params)
        redirect_to @casa, notice: 'Casa was successfully updated.' 
      else
        render :edit 
      end
  end

  # DELETE /casas/1
  def destroy
    @casa = current_user.casas.find(params[:id])
    @casa.destroy
      redirect_to casas_url, notice: 'Casa was successfully destroyed.' 
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def casa_params
      params.require(:casa).permit(:estado, :municipio, :colonia, :calle, :tipo_de_propiedad, :m2terreno, :m2construccion, :baños, :habitaciones, :entorno, :precioask, :inmobiliaria)
    end
end
