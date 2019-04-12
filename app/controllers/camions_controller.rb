class CamionsController < ApplicationController
  before_action :set_camion, only: [:show, :edit, :update, :destroy]

  # GET /camions
  # GET /camions.json
  def index
    @camions = Camion.all
  end

  # GET /camions/1
  # GET /camions/1.json
  def show
  end

  # GET /camions/new
  def new
    @camion = Camion.new
  end

  # GET /camions/1/edit
  def edit
  end

  # POST /camions
  # POST /camions.json
  def create
    @camion = Camion.new(camion_params)

    respond_to do |format|
      if @camion.save
        format.html { redirect_to @camion, notice: 'Camion was successfully created.' }
        format.json { render :show, status: :created, location: @camion }
      else
        format.html { render :new }
        format.json { render json: @camion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /camions/1
  # PATCH/PUT /camions/1.json
  def update
    respond_to do |format|
      if @camion.update(camion_params)
        format.html { redirect_to @camion, notice: 'Camion was successfully updated.' }
        format.json { render :show, status: :ok, location: @camion }
      else
        format.html { render :edit }
        format.json { render json: @camion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /camions/1
  # DELETE /camions/1.json
  def destroy
    @camion.destroy
    respond_to do |format|
      format.html { redirect_to camions_url, notice: 'Camion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_camion
      @camion = Camion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def camion_params
      params.require(:camion).permit(:peso_carga, :volumen_cargar, :equipo_cargar, :condicion_vial, :condicion_ambiental, :condicion_geografica, :tipo_carga, :clase_carga, :estibado_carga, :peso_kilome, :peso_tonelada, :peso_hora, :gasto_finac, :cifra_negocio, :contingencia_venta, :promocion_venta, :contingencia_administrativa, :contingencia_operacional,:contingencia_producción)
    end
end
