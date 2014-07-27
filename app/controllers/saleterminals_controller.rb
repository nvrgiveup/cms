require 'digest/sha2'
class SaleterminalsController < ApplicationController
before_filter :authenticate
  before_action :set_saleterminal, only: [:show, :edit, :update, :destroy]

  # GET /saleterminals
  # GET /saleterminals.json
  def index
    @saleterminals = Saleterminal.all
  end

  # GET /saleterminals/1
  # GET /saleterminals/1.json
  def show
  end

  # GET /saleterminals/new
  def new
    @saleterminal = Saleterminal.new
  end

  # GET /saleterminals/1/edit
  def edit
  end

  # POST /saleterminals
  # POST /saleterminals.json
  def create
    @saleterminal = Saleterminal.new(saleterminal_params)

    respond_to do |format|
      if @saleterminal.save
        format.html { redirect_to @saleterminal, notice: 'Saleterminal was successfully created.' }
        format.json { render action: 'show', status: :created, location: @saleterminal }
      else
        format.html { render action: 'new' }
        format.json { render json: @saleterminal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saleterminals/1
  # PATCH/PUT /saleterminals/1.json
  def update
    respond_to do |format|
      if @saleterminal.update(saleterminal_params)
        format.html { redirect_to @saleterminal, notice: 'Saleterminal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @saleterminal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saleterminals/1
  # DELETE /saleterminals/1.json
  def destroy
    @saleterminal.destroy
    respond_to do |format|
      format.html { redirect_to saleterminals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saleterminal
      @saleterminal = Saleterminal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saleterminal_params
      params.require(:saleterminal).permit(:stock_number, :manufacturer_id, :model, :year, :color, :terminaltype_id, :purchase_date, :invoice_price, :sale_price, :features_note)
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
