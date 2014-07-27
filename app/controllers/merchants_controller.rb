require 'digest/sha2'
class MerchantsController < ApplicationController
before_filter :authenticate
  before_action :set_merchant, only: [:show, :edit, :update, :destroy]

  # GET /merchants
  # GET /merchants.json
  def index
    @merchants = Merchant.all
  end

  # GET /merchants/1
  # GET /merchants/1.json
  def show
  
    @currents = @merchant.current	
    @sales = @merchant.sale
    @leases = @merchant.lease
    
  end

  # GET /merchants/new
  def new
    @merchant = Merchant.new
  end

  # GET /merchants/1/edit
  def edit
  end

  # POST /merchants
  # POST /merchants.json
  def create
    @merchant = Merchant.new(merchant_params)

    respond_to do |format|
      if @merchant.save
        format.html { redirect_to @merchant, notice: 'Merchant was successfully created.' }
        format.json { render action: 'show', status: :created, location: @merchant }
      else
        format.html { render action: 'new' }
        format.json { render json: @merchant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /merchants/1
  # PATCH/PUT /merchants/1.json
  def update
    respond_to do |format|
      if @merchant.update(merchant_params)
        format.html { redirect_to @merchant, notice: 'Merchant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @merchant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /merchants/1
  # DELETE /merchants/1.json
  def destroy
    @merchant.destroy
    respond_to do |format|
      format.html { redirect_to merchants_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merchant
      @merchant = Merchant.find(params[:id])
      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def merchant_params
      params.require(:merchant).permit(:merch_fname, :merch_lname, :merch_dba, :merch_email, :merch_phone, :merch_cell, :merch_fax, :merch_address1, :merch_address2, :merch_city, :merch_state, :merch_zip, :merch_notes, :merchant_id)
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
