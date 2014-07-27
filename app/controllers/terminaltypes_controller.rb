require 'digest/sha2'
class TerminaltypesController < ApplicationController
before_filter :authenticate
  before_action :set_terminaltype, only: [:show, :edit, :update, :destroy]

  # GET /terminaltypes
  # GET /terminaltypes.json
  def index
    @terminaltypes = Terminaltype.all
  end

  # GET /terminaltypes/1
  # GET /terminaltypes/1.json
  def show
  end

  # GET /terminaltypes/new
  def new
    @terminaltype = Terminaltype.new
  end

  # GET /terminaltypes/1/edit
  def edit
  end

  # POST /terminaltypes
  # POST /terminaltypes.json
  def create
    @terminaltype = Terminaltype.new(terminaltype_params)

    respond_to do |format|
      if @terminaltype.save
        format.html { redirect_to @terminaltype, notice: 'Terminaltype was successfully created.' }
        format.json { render action: 'show', status: :created, location: @terminaltype }
      else
        format.html { render action: 'new' }
        format.json { render json: @terminaltype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terminaltypes/1
  # PATCH/PUT /terminaltypes/1.json
  def update
    respond_to do |format|
      if @terminaltype.update(terminaltype_params)
        format.html { redirect_to @terminaltype, notice: 'Terminaltype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @terminaltype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terminaltypes/1
  # DELETE /terminaltypes/1.json
  def destroy
    @terminaltype.destroy
    respond_to do |format|
      format.html { redirect_to terminaltypes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_terminaltype
      @terminaltype = Terminaltype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def terminaltype_params
      params.require(:terminaltype).permit(:type_name)
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
