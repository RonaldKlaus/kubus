class AttributeLanguagesController < ApplicationController
  before_action :set_attribute_language, only: [:show, :edit, :update, :destroy]

  # GET /attribute_languages
  # GET /attribute_languages.json
  def index
    @attribute_languages = AttributeLanguage.all
  end

  # GET /attribute_languages/1
  # GET /attribute_languages/1.json
  def show
  end

  # GET /attribute_languages/new
  def new
    @attribute_language = AttributeLanguage.new
  end

  # GET /attribute_languages/1/edit
  def edit
  end

  # POST /attribute_languages
  # POST /attribute_languages.json
  def create
    @attribute_language = AttributeLanguage.new(attribute_language_params)

    respond_to do |format|
      if @attribute_language.save
        format.html { redirect_to @attribute_language, notice: 'Attribute language was successfully created.' }
        format.json { render action: 'show', status: :created, location: @attribute_language }
      else
        format.html { render action: 'new' }
        format.json { render json: @attribute_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attribute_languages/1
  # PATCH/PUT /attribute_languages/1.json
  def update
    respond_to do |format|
      if @attribute_language.update(attribute_language_params)
        format.html { redirect_to @attribute_language, notice: 'Attribute language was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @attribute_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attribute_languages/1
  # DELETE /attribute_languages/1.json
  def destroy
    @attribute_language.destroy
    respond_to do |format|
      format.html { redirect_to attribute_languages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attribute_language
      @attribute_language = AttributeLanguage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attribute_language_params
      params.require(:attribute_language).permit(:name, :description, :language_id)
    end
end
