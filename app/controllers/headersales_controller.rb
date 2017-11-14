class HeadersalesController < ApplicationController
  before_action :set_headersale, only: [:show, :edit, :update, :destroy]

  # GET /headersales
  # GET /headersales.json
  def index
    @headersales = Headersale.all
  end

  # GET /headersales/1
  # GET /headersales/1.json
  def show
  end

  # GET /headersales/new
  def new
    @headersale = Headersale.new
  end

  # GET /headersales/1/edit
  def edit
  end

  # POST /headersales
  # POST /headersales.json
  def create
    @headersale = Headersale.new(headersale_params)

    respond_to do |format|
      if @headersale.save
        format.html { redirect_to @headersale, notice: 'Headersale was successfully created.' }
        format.json { render :show, status: :created, location: @headersale }
      else
        format.html { render :new }
        format.json { render json: @headersale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /headersales/1
  # PATCH/PUT /headersales/1.json
  def update
    respond_to do |format|
      if @headersale.update(headersale_params)
        format.html { redirect_to @headersale, notice: 'Headersale was successfully updated.' }
        format.json { render :show, status: :ok, location: @headersale }
      else
        format.html { render :edit }
        format.json { render json: @headersale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /headersales/1
  # DELETE /headersales/1.json
  def destroy
    @headersale.destroy
    respond_to do |format|
      format.html { redirect_to headersales_url, notice: 'Headersale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_headersale
      @headersale = Headersale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def headersale_params
      params.require(:headersale).permit(:fechaventa, :client_id, :horaventa, :user_id, :iva, :totalefectivo, :totaltarjeta, :total)
    end
end
