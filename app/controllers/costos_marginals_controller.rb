class CostosMarginalsController < ApplicationController
  before_action :set_costos_marginal, only: [:show, :edit, :update, :destroy]

  # GET /costos_marginals
  # GET /costos_marginals.json
  def index
    @costos_marginals = CostosMarginal.all
  end

  # GET /costos_marginals/1
  # GET /costos_marginals/1.json
  def show
  end

  # GET /costos_marginals/new
  def new
    @costos_marginal = CostosMarginal.new
  end

  # GET /costos_marginals/1/edit
  def edit
  end

  # POST /costos_marginals
  # POST /costos_marginals.json
  def create
    @costos_marginal = CostosMarginal.new(costos_marginal_params)

    respond_to do |format|
      if @costos_marginal.save
        format.html { redirect_to @costos_marginal, notice: 'Costos marginal was successfully created.' }
        format.json { render :show, status: :created, location: @costos_marginal }
      else
        format.html { render :new }
        format.json { render json: @costos_marginal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /costos_marginals/1
  # PATCH/PUT /costos_marginals/1.json
  def update
    respond_to do |format|
      if @costos_marginal.update(costos_marginal_params)
        format.html { redirect_to @costos_marginal, notice: 'Costos marginal was successfully updated.' }
        format.json { render :show, status: :ok, location: @costos_marginal }
      else
        format.html { render :edit }
        format.json { render json: @costos_marginal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /costos_marginals/1
  # DELETE /costos_marginals/1.json
  def destroy
    @costos_marginal.destroy
    respond_to do |format|
      format.html { redirect_to costos_marginals_url, notice: 'Costos marginal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_costos_marginal
      @costos_marginal = CostosMarginal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def costos_marginal_params
      params.require(:costos_marginal).permit(:gasto_finaciero, :cifra_negocio, :promocion_venta, :contingencia_administrativa, :contingencia_operacional, :contingencia_produccion)
    end
end
