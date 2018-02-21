class ClientsHasEmployeursController < ApplicationController
  before_action :set_clients_has_employeur, only: [:show, :edit, :update, :destroy]

  # GET /clients_has_employeurs
  # GET /clients_has_employeurs.json
  def index
    @clients_has_employeurs = ClientsHasEmployeur.all
  end

  # GET /clients_has_employeurs/1
  # GET /clients_has_employeurs/1.json
  def show
  end

  # GET /clients_has_employeurs/new
  def new
    @clients_has_employeur = ClientsHasEmployeur.new
  end

  # GET /clients_has_employeurs/1/edit
  def edit
  end

  # POST /clients_has_employeurs
  # POST /clients_has_employeurs.json
  def create
    @clients_has_employeur = ClientsHasEmployeur.new(clients_has_employeur_params)

    respond_to do |format|
      if @clients_has_employeur.save
        format.html { redirect_to @clients_has_employeur, notice: 'Clients has employeur was successfully created.' }
        format.json { render :show, status: :created, location: @clients_has_employeur }
      else
        format.html { render :new }
        format.json { render json: @clients_has_employeur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients_has_employeurs/1
  # PATCH/PUT /clients_has_employeurs/1.json
  def update
    respond_to do |format|
      if @clients_has_employeur.update(clients_has_employeur_params)
        format.html { redirect_to @clients_has_employeur, notice: 'Clients has employeur was successfully updated.' }
        format.json { render :show, status: :ok, location: @clients_has_employeur }
      else
        format.html { render :edit }
        format.json { render json: @clients_has_employeur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients_has_employeurs/1
  # DELETE /clients_has_employeurs/1.json
  def destroy
    @clients_has_employeur.destroy
    respond_to do |format|
      format.html { redirect_to clients_has_employeurs_url, notice: 'Clients has employeur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clients_has_employeur
      @clients_has_employeur = ClientsHasEmployeur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clients_has_employeur_params
      params.require(:clients_has_employeur).permit(:Clients_id, :Employeurs_id, :DateDebut, :DateFin)
    end
end
