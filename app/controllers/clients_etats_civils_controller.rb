class ClientsEtatsCivilsController < ApplicationController
  before_action :set_clients_etats_civil, only: [:show, :edit, :update, :destroy]

  # GET /clients_etats_civils
  # GET /clients_etats_civils.json
  def index
    @clients_etats_civils = ClientsEtatsCivil.all
  end

  # GET /clients_etats_civils/1
  # GET /clients_etats_civils/1.json
  def show
  end

  # GET /clients_etats_civils/new
  def new
    @clients_etats_civil = ClientsEtatsCivil.new
  end

  # GET /clients_etats_civils/1/edit
  def edit
  end

  # POST /clients_etats_civils
  # POST /clients_etats_civils.json
  def create
    @clients_etats_civil = ClientsEtatsCivil.new(clients_etats_civil_params)

    respond_to do |format|
      if @clients_etats_civil.save
        format.html { redirect_to @clients_etats_civil, notice: 'Clients etats civil was successfully created.' }
        format.json { render :show, status: :created, location: @clients_etats_civil }
      else
        format.html { render :new }
        format.json { render json: @clients_etats_civil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients_etats_civils/1
  # PATCH/PUT /clients_etats_civils/1.json
  def update
    respond_to do |format|
      if @clients_etats_civil.update(clients_etats_civil_params)
        format.html { redirect_to @clients_etats_civil, notice: 'Clients etats civil was successfully updated.' }
        format.json { render :show, status: :ok, location: @clients_etats_civil }
      else
        format.html { render :edit }
        format.json { render json: @clients_etats_civil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients_etats_civils/1
  # DELETE /clients_etats_civils/1.json
  def destroy
    @clients_etats_civil.destroy
    respond_to do |format|
      format.html { redirect_to clients_etats_civils_url, notice: 'Clients etats civil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clients_etats_civil
      @clients_etats_civil = ClientsEtatsCivil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clients_etats_civil_params
      params.require(:clients_etats_civil).permit(:Clients_id, :EtatsCivil_id, :DateDebut, :DateFin)
    end
end
