class TarifaDiferidasController < ApplicationController
  before_action :set_tarifa_diferida, only: [:show, :edit, :update, :destroy]

  # GET /tarifa_diferidas
  # GET /tarifa_diferidas.json
  def index
    @tarifa_diferidas = TarifaDiferida.all
  end

  # GET /tarifa_diferidas/1
  # GET /tarifa_diferidas/1.json
  def show
  end

  # GET /tarifa_diferidas/new
  def new
    @tarifa_diferida = TarifaDiferida.new
  end

  # GET /tarifa_diferidas/1/edit
  def edit
  end

  # POST /tarifa_diferidas
  # POST /tarifa_diferidas.json
  def create
    @tarifa_diferida = TarifaDiferida.new(tarifa_diferida_params)

    respond_to do |format|
      if @tarifa_diferida.save
        format.html { redirect_to @tarifa_diferida, notice: 'Tarifa diferida was successfully created.' }
        format.json { render :show, status: :created, location: @tarifa_diferida }
      else
        format.html { render :new }
        format.json { render json: @tarifa_diferida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tarifa_diferidas/1
  # PATCH/PUT /tarifa_diferidas/1.json
  def update
    respond_to do |format|
      if @tarifa_diferida.update(tarifa_diferida_params)
        format.html { redirect_to @tarifa_diferida, notice: 'Tarifa diferida was successfully updated.' }
        format.json { render :show, status: :ok, location: @tarifa_diferida }
      else
        format.html { render :edit }
        format.json { render json: @tarifa_diferida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tarifa_diferidas/1
  # DELETE /tarifa_diferidas/1.json
  def destroy
    @tarifa_diferida.destroy
    respond_to do |format|
      format.html { redirect_to tarifa_diferidas_url, notice: 'Tarifa diferida was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarifa_diferida
      @tarifa_diferida = TarifaDiferida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tarifa_diferida_params
      params.require(:tarifa_diferida).permit(:peso_kilometro, :peso_tonelada, :peso_hora)
    end
end
