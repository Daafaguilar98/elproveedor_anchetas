class AnchetaController < ApplicationController
  before_action :set_anchetum, only: [:show, :edit, :update, :destroy]

  # GET /ancheta
  # GET /ancheta.json
  def index
    if params[:clave] == "Diosesnuestrabendicion"
      @ancheta = Anchetum.all
    else
      redirect_to anchetas_path
    end
  end

  # GET /ancheta/new
  def new
    @anchetum = Anchetum.new
    @body = true
  end

  # GET /ancheta/1/edit
  def edit
  end

  # POST /ancheta
  # POST /ancheta.json
  def create
    @anchetum = Anchetum.new(anchetum_params)
    @body = true

    respond_to do |format|
      if @anchetum.save
        format.html { redirect_to root_path, notice: 'Anchetum was successfully created.' }
        format.json { render :show, status: :created, location: @anchetum }
      else
        format.html { render :new }
        format.json { render json: @anchetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ancheta/1
  # PATCH/PUT /ancheta/1.json
  def update
    respond_to do |format|
      if @anchetum.update(anchetum_params)
        format.html { redirect_to @anchetum, notice: 'Anchetum was successfully updated.' }
        format.json { render :show, status: :ok, location: @anchetum }
      else
        format.html { render :edit }
        format.json { render json: @anchetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ancheta/1
  # DELETE /ancheta/1.json
  def destroy
    @anchetum.destroy
    respond_to do |format|
      format.html { redirect_to ancheta_url, notice: 'Anchetum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anchetum
      @anchetum = Anchetum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anchetum_params
      params.require(:anchetum).permit(:nombre, :celular, :direccion, descripcion: [])
    end
end
