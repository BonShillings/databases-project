class RatersController < ApplicationController
  before_action :set_rater, only: [:show, :edit, :update, :destroy]

  # GET /raters
  # GET /raters.json
  def index
    @raters = Rater.all
  end

  # GET /raters/1
  # GET /raters/1.json
  def show
  end

  # GET /raters/new
  def new
    @rater = Rater.new
  end

  # GET /raters/1/edit
  def edit
  end

  # POST /raters
  # POST /raters.json
  def create
    @rater = Rater.new(rater_params)

    respond_to do |format|
      if @rater.save
        format.html { redirect_to @rater, notice: 'Rater was successfully created.' }
        format.json { render :show, status: :created, location: @rater }
      else
        format.html { render :new }
        format.json { render json: @rater.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raters/1
  # PATCH/PUT /raters/1.json
  def update
    respond_to do |format|
      if @rater.update(rater_params)
        format.html { redirect_to @rater, notice: 'Rater was successfully updated.' }
        format.json { render :show, status: :ok, location: @rater }
      else
        format.html { render :edit }
        format.json { render json: @rater.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raters/1
  # DELETE /raters/1.json
  def destroy
    @rater.destroy
    respond_to do |format|
      format.html { redirect_to raters_url, notice: 'Rater was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rater
      @rater = Rater.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rater_params
      params.require(:rater).permit(:email, :name, :join_date, :rtype, :reputation)
    end
end
