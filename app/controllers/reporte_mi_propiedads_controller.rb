 class ReporteMiPropiedadsController < ApplicationController
  before_action :authenticate_user! 

  def index
    @reporte_mi_propiedads = ReporteMiPropiedad.all
  end

  def show
    @reporte_mi_propiedad = ReporteMiPropiedad.find(params[:id])
  end


  def new
    @reporte_mi_propiedad = ReporteMiPropiedad.new
  end

  def edit
    @reporte_mi_propiedad = ReporteMiPropiedad.find(params[:id])
  end

  def create
    @reporte_mi_propiedad = ReporteMiPropiedad.new(reporte_mi_propiedad_params)
      if @reporte_mi_propiedad.save
        redirect_to @reporte_mi_propiedad, notice: 'Reporte mi propiedad was successfully created.' 
      else
        render :new 
      end
  end

  def update
    @reporte_mi_propiedad = ReporteMiPropiedad.find(params[:id])
      if @reporte_mi_propiedad.update(reporte_mi_propiedad_params)
        redirect_to @reporte_mi_propiedad, notice: 'Reporte mi propiedad was successfully updated.' 
      else
        render :edit 
      end
  end

  def destroy
    @reporte_mi_propiedad = ReporteMiPropiedad.find(params[:id])
    @reporte_mi_propiedad.destroy
      redirect_to reporte_mi_propiedads_url, notice: 'Reporte mi propiedad was successfully destroyed.' 
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def reporte_mi_propiedad_params
      params.require(:reporte_mi_propiedad).permit(:mi_propiedad_id, :tipo_de_demanda, :años_de_analisis, :plusvalia_historica, :proyeccion_plusvalia, :años_de_proyeccion, :plusvalia_colonia, :plusvalia_municipio, :plusvalia_estatal, :precio_midprice, :precio_bidlow, :precio_askhigh)
    end







# class ReporteMiPropiedadsController < ApplicationController
#   before_action :set_reporte_mi_propiedad, only: [:show, :edit, :update, :destroy]

#   # GET /reporte_mi_propiedads
#   # GET /reporte_mi_propiedads.json
#   def index
#     @reporte_mi_propiedads = ReporteMiPropiedad.all
#   end

#   # GET /reporte_mi_propiedads/1
#   # GET /reporte_mi_propiedads/1.json
#   def show
#   end

#   # GET /reporte_mi_propiedads/new
#   def new
#     @reporte_mi_propiedad = ReporteMiPropiedad.new
#   end

#   # GET /reporte_mi_propiedads/1/edit
#   def edit
#   end

#   # POST /reporte_mi_propiedads
#   # POST /reporte_mi_propiedads.json
#   def create
#     @reporte_mi_propiedad = ReporteMiPropiedad.new(reporte_mi_propiedad_params)

#     respond_to do |format|
#       if @reporte_mi_propiedad.save
#         format.html { redirect_to @reporte_mi_propiedad, notice: 'Reporte mi propiedad was successfully created.' }
#         format.json { render :show, status: :created, location: @reporte_mi_propiedad }
#       else
#         format.html { render :new }
#         format.json { render json: @reporte_mi_propiedad.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # PATCH/PUT /reporte_mi_propiedads/1
#   # PATCH/PUT /reporte_mi_propiedads/1.json
#   def update
#     respond_to do |format|
#       if @reporte_mi_propiedad.update(reporte_mi_propiedad_params)
#         format.html { redirect_to @reporte_mi_propiedad, notice: 'Reporte mi propiedad was successfully updated.' }
#         format.json { render :show, status: :ok, location: @reporte_mi_propiedad }
#       else
#         format.html { render :edit }
#         format.json { render json: @reporte_mi_propiedad.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # DELETE /reporte_mi_propiedads/1
#   # DELETE /reporte_mi_propiedads/1.json
#   def destroy
#     @reporte_mi_propiedad.destroy
#     respond_to do |format|
#       format.html { redirect_to reporte_mi_propiedads_url, notice: 'Reporte mi propiedad was successfully destroyed.' }
#       format.json { head :no_content }
#     end
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_reporte_mi_propiedad
#       @reporte_mi_propiedad = ReporteMiPropiedad.find(params[:id])
#     end

#     # Never trust parameters from the scary internet, only allow the white list through.
#     def reporte_mi_propiedad_params
#       params.require(:reporte_mi_propiedad).permit(:mi_propiedad_id, :tipo_de_demanda, :años_de_analisis, :plusvalia_historica, :proyeccion_plusvalia, :años_de_proyeccion, :plusvalia_colonia, :plusvalia_municipio, :plusvalia_estatal, :precio_midprice, :precio_bidlow, :precio_askhigh)
#     end
# end
