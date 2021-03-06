require 'digest/sha2'
class LeasesController < ApplicationController
before_filter :authenticate
  before_action :set_lease, only: [:show, :edit, :update, :destroy]

  # GET /leases
  # GET /leases.json
  def index
    @leases = Lease.all
  end

  # GET /leases/1
  # GET /leases/1.json
  def show
  end

  # GET /leases/new
  def new
    @lease = Lease.new
  end

  # GET /leases/1/edit
  def edit
  end

  # POST /leases
  # POST /leases.json
  def create
    @lease = Lease.new(lease_params)

    respond_to do |format|
      if @lease.save
        format.html { redirect_to @lease, notice: 'Lease was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lease }
      else
        format.html { render action: 'new' }
        format.json { render json: @lease.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leases/1
  # PATCH/PUT /leases/1.json
  def update
    respond_to do |format|
      if @lease.update(lease_params)
        format.html { redirect_to @lease, notice: 'Lease was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lease.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leases/1
  # DELETE /leases/1.json
  def destroy
    @lease.destroy
    respond_to do |format|
      format.html { redirect_to leases_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lease
      @lease = Lease.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lease_params
      params.require(:lease).permit(:saleterminal_id, :merchant_id, :salesrep_id, :lease_price, :lease_date, :lease_term_months)
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
