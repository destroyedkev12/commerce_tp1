class ClientsHasConjointsController < ApplicationController
  before_action :set_clients_has_conjoint, only: [:show, :edit, :update, :destroy]

  # GET /clients_has_conjoints
  # GET /clients_has_conjoints.json
  def index
    @clients_has_conjoints = ClientsHasConjoint.all
  end

  # GET /clients_has_conjoints/1
  # GET /clients_has_conjoints/1.json
  def show
  end

  # GET /clients_has_conjoints/new
  def new
    @clients_has_conjoint = ClientsHasConjoint.new
  end

  # GET /clients_has_conjoints/1/edit
  def edit
  end

  # POST /clients_has_conjoints
  # POST /clients_has_conjoints.json
  def create
    @clients_has_conjoint = ClientsHasConjoint.new(clients_has_conjoint_params)

    respond_to do |format|
      if @clients_has_conjoint.save
        format.html { redirect_to @clients_has_conjoint, notice: 'Clients has conjoint was successfully created.' }
        format.json { render :show, status: :created, location: @clients_has_conjoint }
      else
        format.html { render :new }
        format.json { render json: @clients_has_conjoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients_has_conjoints/1
  # PATCH/PUT /clients_has_conjoints/1.json
  def update
    respond_to do |format|
      if @clients_has_conjoint.update(clients_has_conjoint_params)
        format.html { redirect_to @clients_has_conjoint, notice: 'Clients has conjoint was successfully updated.' }
        format.json { render :show, status: :ok, location: @clients_has_conjoint }
      else
        format.html { render :edit }
        format.json { render json: @clients_has_conjoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients_has_conjoints/1
  # DELETE /clients_has_conjoints/1.json
  def destroy
    @clients_has_conjoint.destroy
    respond_to do |format|
      format.html { redirect_to clients_has_conjoints_url, notice: 'Clients has conjoint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clients_has_conjoint
      @clients_has_conjoint = ClientsHasConjoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clients_has_conjoint_params
      params.require(:clients_has_conjoint).permit(:Clients_id, :Clients_Conjoint_id, :DateDebut, :DateFin)
    end
end
