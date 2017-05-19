class ComunidadsController < ApplicationController
  before_action :set_comunidad, only: [:show, :edit, :update, :destroy]

  # GET /comunidads
  # GET /comunidads.json
  def index
    @comunidads = Comunidad.all
  end

  # GET /comunidads/1
  # GET /comunidads/1.json
  def show
  end

  # GET /comunidads/new
  def new
    @comunidad = Comunidad.new
  end

  # GET /comunidads/1/edit
  def edit
  end

  # POST /comunidads
  # POST /comunidads.json
  def create
    @comunidad = Comunidad.new(comunidad_params)

    respond_to do |format|
      if @comunidad.save
        format.html { redirect_to @comunidad, notice: 'Comunidad was successfully created.' }
        format.json { render :show, status: :created, location: @comunidad }
      else
        format.html { render :new }
        format.json { render json: @comunidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comunidads/1
  # PATCH/PUT /comunidads/1.json
  def update
    respond_to do |format|
      if @comunidad.update(comunidad_params)
        format.html { redirect_to @comunidad, notice: 'Comunidad was successfully updated.' }
        format.json { render :show, status: :ok, location: @comunidad }
      else
        format.html { render :edit }
        format.json { render json: @comunidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comunidads/1
  # DELETE /comunidads/1.json
  def destroy
    @comunidad.destroy
    respond_to do |format|
      format.html { redirect_to comunidads_url, notice: 'Comunidad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comunidad
      @comunidad = Comunidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comunidad_params
      params.fetch(:comunidad, {})
    end
end
