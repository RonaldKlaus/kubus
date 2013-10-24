class SciencedomainsController < ApplicationController
  before_action :set_sciencedomain, only: [:show, :edit, :update, :destroy]

  # GET /sciencedomains
  # GET /sciencedomains.json
  def index
    @sciencedomains = Sciencedomain.all
  end

  # GET /sciencedomains/1
  # GET /sciencedomains/1.json
  def show
  end

  # GET /sciencedomains/new
  def new
    @sciencedomain = Sciencedomain.new
  end

  # GET /sciencedomains/1/edit
  def edit
  end

  # POST /sciencedomains
  # POST /sciencedomains.json
  def create
    @sciencedomain = Sciencedomain.new(sciencedomain_params)

    respond_to do |format|
      if @sciencedomain.save
        format.html { redirect_to @sciencedomain, notice: 'Sciencedomain was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sciencedomain }
      else
        format.html { render action: 'new' }
        format.json { render json: @sciencedomain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sciencedomains/1
  # PATCH/PUT /sciencedomains/1.json
  def update
    respond_to do |format|
      if @sciencedomain.update(sciencedomain_params)
        format.html { redirect_to @sciencedomain, notice: 'Sciencedomain was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sciencedomain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sciencedomains/1
  # DELETE /sciencedomains/1.json
  def destroy
    @sciencedomain.destroy
    respond_to do |format|
      format.html { redirect_to sciencedomains_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sciencedomain
      @sciencedomain = Sciencedomain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sciencedomain_params
      params[:sciencedomain]
    end
end
