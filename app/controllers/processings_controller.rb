require 'digest/sha2'
class ProcessingsController < ApplicationController
before_filter :authenticate
  before_action :set_processing, only: [:show, :edit, :update, :destroy]

  # GET /processings
  # GET /processings.json
  def index
    @processings = Processing.all
  end

  # GET /processings/1
  # GET /processings/1.json
  def show
  end

  # GET /processings/new
  def new
    @processing = Processing.new
  end

  # GET /processings/1/edit
  def edit
  end

  # POST /processings
  # POST /processings.json
  def create
    @processing = Processing.new(processing_params)

    respond_to do |format|
      if @processing.save
        format.html { redirect_to @processing, notice: 'Processing was successfully created.' }
        format.json { render action: 'show', status: :created, location: @processing }
      else
        format.html { render action: 'new' }
        format.json { render json: @processing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /processings/1
  # PATCH/PUT /processings/1.json
  def update
    respond_to do |format|
      if @processing.update(processing_params)
        format.html { redirect_to @processing, notice: 'Processing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @processing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /processings/1
  # DELETE /processings/1.json
  def destroy
    @processing.destroy
    respond_to do |format|
      format.html { redirect_to processings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_processing
      @processing = Processing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def processing_params
      params.require(:processing).permit(:discountrate, :transfee, :batchfee, :annualfee, :statementfee)
    end
  private 
    def authenticate 
      userhash = { } 
      User.all.each do |user|
      userhash.store(user.username, user.password) 
      end
        
      authenticate_or_request_with_http_digest("localhost") do |username| 
      userhash[username] 
      end 
    end
end
