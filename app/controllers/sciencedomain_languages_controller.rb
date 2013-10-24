class SciencedomainLanguagesController < ApplicationController
  before_action :set_sciencedomain_language, only: [:show, :edit, :update, :destroy]

  # GET /sciencedomain_languages
  # GET /sciencedomain_languages.json
  def index
    @sciencedomain_languages = SciencedomainLanguage.all
  end

  # GET /sciencedomain_languages/1
  # GET /sciencedomain_languages/1.json
  def show
  end

  # GET /sciencedomain_languages/new
  def new
    @sciencedomain_language = SciencedomainLanguage.new
  end

  # GET /sciencedomain_languages/1/edit
  def edit
  end

  # POST /sciencedomain_languages
  # POST /sciencedomain_languages.json
  def create
    @sciencedomain_language = SciencedomainLanguage.new(sciencedomain_language_params)

    respond_to do |format|
      if @sciencedomain_language.save
        format.html { redirect_to @sciencedomain_language, notice: 'Sciencedomain language was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sciencedomain_language }
      else
        format.html { render action: 'new' }
        format.json { render json: @sciencedomain_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sciencedomain_languages/1
  # PATCH/PUT /sciencedomain_languages/1.json
  def update
    respond_to do |format|
      if @sciencedomain_language.update(sciencedomain_language_params)
        format.html { redirect_to @sciencedomain_language, notice: 'Sciencedomain language was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sciencedomain_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sciencedomain_languages/1
  # DELETE /sciencedomain_languages/1.json
  def destroy
    @sciencedomain_language.destroy
    respond_to do |format|
      format.html { redirect_to sciencedomain_languages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sciencedomain_language
      @sciencedomain_language = SciencedomainLanguage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sciencedomain_language_params
      params.require(:sciencedomain_language).permit(:state_id, :name, :description, :language_id)
    end
end
