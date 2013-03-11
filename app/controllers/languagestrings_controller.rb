class LanguagestringsController < ApplicationController
  # GET /languagestrings
  # GET /languagestrings.json
  def index
    @languagestrings = Languagestring.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @languagestrings }
    end
  end

  # GET /languagestrings/1
  # GET /languagestrings/1.json
  def show
    @languagestring = Languagestring.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @languagestring }
    end
  end

  # GET /languagestrings/new
  # GET /languagestrings/new.json
  def new
    @languagestring = Languagestring.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @languagestring }
    end
  end

  # GET /languagestrings/1/edit
  def edit
    @languagestring = Languagestring.find(params[:id])
  end

  # POST /languagestrings
  # POST /languagestrings.json
  def create
    @languagestring = Languagestring.new(params[:languagestring])

    respond_to do |format|
      if @languagestring.save
        format.html { redirect_to @languagestring, notice: 'Languagestring was successfully created.' }
        format.json { render json: @languagestring, status: :created, location: @languagestring }
      else
        format.html { render action: "new" }
        format.json { render json: @languagestring.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /languagestrings/1
  # PUT /languagestrings/1.json
  def update
    @languagestring = Languagestring.find(params[:id])

    respond_to do |format|
      if @languagestring.update_attributes(params[:languagestring])
        format.html { redirect_to @languagestring, notice: 'Languagestring was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @languagestring.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /languagestrings/1
  # DELETE /languagestrings/1.json
  def destroy
    @languagestring = Languagestring.find(params[:id])
    @languagestring.destroy

    respond_to do |format|
      format.html { redirect_to languagestrings_url }
      format.json { head :no_content }
    end
  end

  def find_by_stringid_and_locale
    @languagestring = Languagestring.find_by_stringid_and_locale(params[:id],params[:locale])
    debugger
    respond_to do |format|
      format.html { render json: @languagestring }
      format.json { render json: @languagestring }
    end
  end
end
