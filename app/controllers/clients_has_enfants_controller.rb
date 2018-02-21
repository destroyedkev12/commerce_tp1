class ClientsHasEnfantsController < ApplicationController
  before_action :set_clients_has_enfant, only: [:show, :edit, :update, :destroy]

  # GET /clients_has_enfants
  # GET /clients_has_enfants.json
  def index
    @clients_has_enfants = ClientsHasEnfant.all
  end

  # GET /clients_has_enfants/1
  # GET /clients_has_enfants/1.json
  def show
  end

  # GET /clients_has_enfants/new
  def new
    @clients_has_enfant = ClientsHasEnfant.new
  end

  # GET /clients_has_enfants/1/edit
  def edit
  end

  # POST /clients_has_enfants
  # POST /clients_has_enfants.json
  def create
    @clients_has_enfant = ClientsHasEnfant.new(clients_has_enfant_params)

    respond_to do |format|
      if @clients_has_enfant.save
        format.html { redirect_to @clients_has_enfant, notice: 'Clients has enfant was successfully created.' }
        format.json { render :show, status: :created, location: @clients_has_enfant }
      else
        format.html { render :new }
        format.json { render json: @clients_has_enfant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients_has_enfants/1
  # PATCH/PUT /clients_has_enfants/1.json
  def update
    respond_to do |format|
      if @clients_has_enfant.update(clients_has_enfant_params)
        format.html { redirect_to @clients_has_enfant, notice: 'Clients has enfant was successfully updated.' }
        format.json { render :show, status: :ok, location: @clients_has_enfant }
      else
        format.html { render :edit }
        format.json { render json: @clients_has_enfant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients_has_enfants/1
  # DELETE /clients_has_enfants/1.json
  def destroy
    @clients_has_enfant.destroy
    respond_to do |format|
      format.html { redirect_to clients_has_enfants_url, notice: 'Clients has enfant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clients_has_enfant
      @clients_has_enfant = ClientsHasEnfant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clients_has_enfant_params
      params.require(:clients_has_enfant).permit(:Enfants_id, :Clients_id, :Lien)
    end
end
