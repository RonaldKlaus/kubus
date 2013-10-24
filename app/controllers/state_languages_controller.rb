class StateLanguagesController < ApplicationController
  before_action :set_state_language, only: [:show, :edit, :update, :destroy]

  # GET /state_languages
  # GET /state_languages.json
  def index
    @state_languages = StateLanguage.all
  end

  # GET /state_languages/1
  # GET /state_languages/1.json
  def show
  end

  # GET /state_languages/new
  def new
    @state_language = StateLanguage.new
  end

  # GET /state_languages/1/edit
  def edit
  end

  # POST /state_languages
  # POST /state_languages.json
  def create
    @state_language = StateLanguage.new(state_language_params)

    respond_to do |format|
      if @state_language.save
        format.html { redirect_to @state_language, notice: 'State language was successfully created.' }
        format.json { render action: 'show', status: :created, location: @state_language }
      else
        format.html { render action: 'new' }
        format.json { render json: @state_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /state_languages/1
  # PATCH/PUT /state_languages/1.json
  def update
    respond_to do |format|
      if @state_language.update(state_language_params)
        format.html { redirect_to @state_language, notice: 'State language was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @state_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /state_languages/1
  # DELETE /state_languages/1.json
  def destroy
    @state_language.destroy
    respond_to do |format|
      format.html { redirect_to state_languages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_language
      @state_language = StateLanguage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_language_params
      params.require(:state_language).permit(:state_id, :name, :description, :language_id)
    end
end
