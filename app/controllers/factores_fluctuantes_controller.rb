class FactoresFluctuantesController < ApplicationController
  before_action :set_factores_fluctuante, only: [:show, :edit, :update, :destroy]

  # GET /factores_fluctuantes
  # GET /factores_fluctuantes.json
  def index
    @factores_fluctuantes = FactoresFluctuante.all
  end

  # GET /factores_fluctuantes/1
  # GET /factores_fluctuantes/1.json
  def show
  end

  # GET /factores_fluctuantes/new
  def new
    @factores_fluctuante = FactoresFluctuante.new
  end

  # GET /factores_fluctuantes/1/edit
  def edit
  end

  # POST /factores_fluctuantes
  # POST /factores_fluctuantes.json
  def create
    @factores_fluctuante = FactoresFluctuante.new(factores_fluctuante_params)

    respond_to do |format|
      if @factores_fluctuante.save
        format.html { redirect_to @factores_fluctuante, notice: 'Factores fluctuante was successfully created.' }
        format.json { render :show, status: :created, location: @factores_fluctuante }
      else
        format.html { render :new }
        format.json { render json: @factores_fluctuante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /factores_fluctuantes/1
  # PATCH/PUT /factores_fluctuantes/1.json
  def update
    respond_to do |format|
      if @factores_fluctuante.update(factores_fluctuante_params)
        format.html { redirect_to @factores_fluctuante, notice: 'Factores fluctuante was successfully updated.' }
        format.json { render :show, status: :ok, location: @factores_fluctuante }
      else
        format.html { render :edit }
        format.json { render json: @factores_fluctuante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /factores_fluctuantes/1
  # DELETE /factores_fluctuantes/1.json
  def destroy
    @factores_fluctuante.destroy
    respond_to do |format|
      format.html { redirect_to factores_fluctuantes_url, notice: 'Factores fluctuante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_factores_fluctuante
      @factores_fluctuante = FactoresFluctuante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def factores_fluctuante_params
      params.require(:factores_fluctuante).permit(:peso_carga, :volumen_carga, :condiciones_viales, :condiciones_ambientales, :condiciones_geograficas, :tipo_carga)
    end
end
