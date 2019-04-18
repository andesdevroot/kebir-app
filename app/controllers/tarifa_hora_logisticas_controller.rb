class TarifaHoraLogisticasController < ApplicationController
  before_action :set_tarifa_hora_logistica, only: [:show, :edit, :update, :destroy]

  # GET /tarifa_hora_logisticas
  # GET /tarifa_hora_logisticas.json
  def index
    @tarifa_hora_logisticas = TarifaHoraLogistica.all
  end

  # GET /tarifa_hora_logisticas/1
  # GET /tarifa_hora_logisticas/1.json
  def show
  end

  # GET /tarifa_hora_logisticas/new
  def new
    @tarifa_hora_logistica = TarifaHoraLogistica.new
  end

  # GET /tarifa_hora_logisticas/1/edit
  def edit
  end

  # POST /tarifa_hora_logisticas
  # POST /tarifa_hora_logisticas.json
  def create
    @tarifa_hora_logistica = TarifaHoraLogistica.new(tarifa_hora_logistica_params)

    respond_to do |format|
      if @tarifa_hora_logistica.save
        format.html { redirect_to @tarifa_hora_logistica, notice: 'Tarifa hora logistica was successfully created.' }
        format.json { render :show, status: :created, location: @tarifa_hora_logistica }
      else
        format.html { render :new }
        format.json { render json: @tarifa_hora_logistica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tarifa_hora_logisticas/1
  # PATCH/PUT /tarifa_hora_logisticas/1.json
  def update
    respond_to do |format|
      if @tarifa_hora_logistica.update(tarifa_hora_logistica_params)
        format.html { redirect_to @tarifa_hora_logistica, notice: 'Tarifa hora logistica was successfully updated.' }
        format.json { render :show, status: :ok, location: @tarifa_hora_logistica }
      else
        format.html { render :edit }
        format.json { render json: @tarifa_hora_logistica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tarifa_hora_logisticas/1
  # DELETE /tarifa_hora_logisticas/1.json
  def destroy
    @tarifa_hora_logistica.destroy
    respond_to do |format|
      format.html { redirect_to tarifa_hora_logisticas_url, notice: 'Tarifa hora logistica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarifa_hora_logistica
      @tarifa_hora_logistica = TarifaHoraLogistica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tarifa_hora_logistica_params
      params.require(:tarifa_hora_logistica).permit(:valor_dolar, :variacion_inversion, :variacion_mano_obra, :variacion_materia_prima, :varicion_financiera, :nivel_utilidades, :impuestos_derechos)
    end
end
