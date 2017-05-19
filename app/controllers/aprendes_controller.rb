class AprendesController < ApplicationController
  before_action :set_aprende, only: [:show, :edit, :update, :destroy]

  # GET /aprendes
  # GET /aprendes.json
  def index
    @aprendes = Aprende.all
  end

  # GET /aprendes/1
  # GET /aprendes/1.json
  def show
  end

  # GET /aprendes/new
  def new
    @aprende = Aprende.new
  end

  # GET /aprendes/1/edit
  def edit
  end

  # POST /aprendes
  # POST /aprendes.json
  def create
    @aprende = Aprende.new(aprende_params)

    respond_to do |format|
      if @aprende.save
        format.html { redirect_to @aprende, notice: 'Aprende was successfully created.' }
        format.json { render :show, status: :created, location: @aprende }
      else
        format.html { render :new }
        format.json { render json: @aprende.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aprendes/1
  # PATCH/PUT /aprendes/1.json
  def update
    respond_to do |format|
      if @aprende.update(aprende_params)
        format.html { redirect_to @aprende, notice: 'Aprende was successfully updated.' }
        format.json { render :show, status: :ok, location: @aprende }
      else
        format.html { render :edit }
        format.json { render json: @aprende.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aprendes/1
  # DELETE /aprendes/1.json
  def destroy
    @aprende.destroy
    respond_to do |format|
      format.html { redirect_to aprendes_url, notice: 'Aprende was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aprende
      @aprende = Aprende.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aprende_params
      params.fetch(:aprende, {})
    end
end
