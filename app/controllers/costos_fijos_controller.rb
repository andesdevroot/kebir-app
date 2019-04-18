class CostosFijosController < ApplicationController
  before_action :set_costos_fijo, only: [:show, :edit, :update, :destroy]

  # GET /costos_fijos
  # GET /costos_fijos.json
  def index
    @costos_fijos = CostosFijo.all
  end

  # GET /costos_fijos/1
  # GET /costos_fijos/1.json
  def show
  end

  # GET /costos_fijos/new
  def new
    @costos_fijo = CostosFijo.new
  end

  # GET /costos_fijos/1/edit
  def edit
  end

  # POST /costos_fijos
  # POST /costos_fijos.json
  def create
    @costos_fijo = CostosFijo.new(costos_fijo_params)

    respond_to do |format|
      if @costos_fijo.save
        format.html { redirect_to @costos_fijo, notice: 'Costos fijo was successfully created.' }
        format.json { render :show, status: :created, location: @costos_fijo }
      else
        format.html { render :new }
        format.json { render json: @costos_fijo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /costos_fijos/1
  # PATCH/PUT /costos_fijos/1.json
  def update
    respond_to do |format|
      if @costos_fijo.update(costos_fijo_params)
        format.html { redirect_to @costos_fijo, notice: 'Costos fijo was successfully updated.' }
        format.json { render :show, status: :ok, location: @costos_fijo }
      else
        format.html { render :edit }
        format.json { render json: @costos_fijo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /costos_fijos/1
  # DELETE /costos_fijos/1.json
  def destroy
    @costos_fijo.destroy
    respond_to do |format|
      format.html { redirect_to costos_fijos_url, notice: 'Costos fijo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_costos_fijo
      @costos_fijo = CostosFijo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def costos_fijo_params
      params.require(:costos_fijo).permit(:cantidad_movimiento_mensual, :frecuencia_movimiento, :multiplividad_tiempo_movimiento)
    end
end
