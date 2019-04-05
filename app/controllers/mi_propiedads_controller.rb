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
    mi_propiedad = current_user.mi_propiedads.find(params[:id])
      if @mi_propiedad.update(mi_propiedad_params)
        redirect_to @mi_propiedad, notice: 'Mi propiedad was successfully updated.' 
      else
        render :edit 
      end
  end

  def destroy
    mi_propiedad = current_user.mi_propiedads.find(params[:id])
    @mi_propiedad.destroy
      redirect_to mi_propiedads_url, notice: 'Mi propiedad was successfully destroyed.' 
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def mi_propiedad_params
      params.require(:mi_propiedad).permit(:estado, :municipio, :colonia, :calle, :numero, :tipo_de_propiedad, :m2terreno, :m2construccion, :baños, :habitaciones, :entorno, :condiciones_de_la_propiedad, :precio_al_que_adquiri, :año_al_que_adquiri, :en_venta, :plazo_de_venta)
    end
end












# class MiPropiedadsController < ApplicationController
#   before_action :set_mi_propiedad, only: [:show, :edit, :update, :destroy]

#   # GET /mi_propiedads
#   # GET /mi_propiedads.json
#   def index
#     @mi_propiedads = MiPropiedad.all
#   end

#   # GET /mi_propiedads/1
#   # GET /mi_propiedads/1.json
#   def show
#   end

#   # GET /mi_propiedads/new
#   def new
#     @mi_propiedad = MiPropiedad.new
#   end

#   # GET /mi_propiedads/1/edit
#   def edit
#   end

#   # POST /mi_propiedads
#   # POST /mi_propiedads.json
#   def create
#     @mi_propiedad = MiPropiedad.new(mi_propiedad_params)

#     respond_to do |format|
#       if @mi_propiedad.save
#         format.html { redirect_to @mi_propiedad, notice: 'Mi propiedad was successfully created.' }
#         format.json { render :show, status: :created, location: @mi_propiedad }
#       else
#         format.html { render :new }
#         format.json { render json: @mi_propiedad.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # PATCH/PUT /mi_propiedads/1
#   # PATCH/PUT /mi_propiedads/1.json
#   def update
#     respond_to do |format|
#       if @mi_propiedad.update(mi_propiedad_params)
#         format.html { redirect_to @mi_propiedad, notice: 'Mi propiedad was successfully updated.' }
#         format.json { render :show, status: :ok, location: @mi_propiedad }
#       else
#         format.html { render :edit }
#         format.json { render json: @mi_propiedad.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # DELETE /mi_propiedads/1
#   # DELETE /mi_propiedads/1.json
#   def destroy
#     @mi_propiedad.destroy
#     respond_to do |format|
#       format.html { redirect_to mi_propiedads_url, notice: 'Mi propiedad was successfully destroyed.' }
#       format.json { head :no_content }
#     end
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_mi_propiedad
#       @mi_propiedad = MiPropiedad.find(params[:id])
#     end

#     # Never trust parameters from the scary internet, only allow the white list through.
#     def mi_propiedad_params
#       params.require(:mi_propiedad).permit(:user_id, :estado, :municipio, :colonia, :calle, :numero, :tipo_de_propiedad, :m2terreno, :m2construccion, :baños, :habitaciones, :entorno, :condiciones_de_la_propiedad, :precio_al_que_adquiri, :año_al_que_adquiri, :en_venta, :plazo_de_venta)
#     end
# end
