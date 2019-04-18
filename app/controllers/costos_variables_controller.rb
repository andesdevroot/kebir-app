class CostosVariablesController < ApplicationController
  before_action :set_costos_variable, only: [:show, :edit, :update, :destroy]

  # GET /costos_variables
  # GET /costos_variables.json
  def index
    @costos_variables = CostosVariable.all
  end

  # GET /costos_variables/1
  # GET /costos_variables/1.json
  def show
  end

  # GET /costos_variables/new
  def new
    @costos_variable = CostosVariable.new
  end

  # GET /costos_variables/1/edit
  def edit
  end

  # POST /costos_variables
  # POST /costos_variables.json
  def create
    @costos_variable = CostosVariable.new(costos_variable_params)

    respond_to do |format|
      if @costos_variable.save
        format.html { redirect_to @costos_variable, notice: 'Costos variable was successfully created.' }
        format.json { render :show, status: :created, location: @costos_variable }
      else
        format.html { render :new }
        format.json { render json: @costos_variable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /costos_variables/1
  # PATCH/PUT /costos_variables/1.json
  def update
    respond_to do |format|
      if @costos_variable.update(costos_variable_params)
        format.html { redirect_to @costos_variable, notice: 'Costos variable was successfully updated.' }
        format.json { render :show, status: :ok, location: @costos_variable }
      else
        format.html { render :edit }
        format.json { render json: @costos_variable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /costos_variables/1
  # DELETE /costos_variables/1.json
  def destroy
    @costos_variable.destroy
    respond_to do |format|
      format.html { redirect_to costos_variables_url, notice: 'Costos variable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_costos_variable
      @costos_variable = CostosVariable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def costos_variable_params
      params.require(:costos_variable).permit(:localidad_logistica, :localidad_consolidado, :localidad_stacking, :valor_peajes, :vitaico_kilometros, :servicio_kilometro, :sueldo_conductor, :porcentaje_conductor, :horas_logistica)
    end
end
