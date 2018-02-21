class EtatsCivilsController < ApplicationController
  before_action :set_etats_civil, only: [:show, :edit, :update, :destroy]

  # GET /etats_civils
  # GET /etats_civils.json
  def index
    @etats_civils = EtatsCivil.all
  end

  # GET /etats_civils/1
  # GET /etats_civils/1.json
  def show
  end

  # GET /etats_civils/new
  def new
    @etats_civil = EtatsCivil.new
  end

  # GET /etats_civils/1/edit
  def edit
  end

  # POST /etats_civils
  # POST /etats_civils.json
  def create
    @etats_civil = EtatsCivil.new(etats_civil_params)

    respond_to do |format|
      if @etats_civil.save
        format.html { redirect_to @etats_civil, notice: 'Etats civil was successfully created.' }
        format.json { render :show, status: :created, location: @etats_civil }
      else
        format.html { render :new }
        format.json { render json: @etats_civil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etats_civils/1
  # PATCH/PUT /etats_civils/1.json
  def update
    respond_to do |format|
      if @etats_civil.update(etats_civil_params)
        format.html { redirect_to @etats_civil, notice: 'Etats civil was successfully updated.' }
        format.json { render :show, status: :ok, location: @etats_civil }
      else
        format.html { render :edit }
        format.json { render json: @etats_civil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etats_civils/1
  # DELETE /etats_civils/1.json
  def destroy
    @etats_civil.destroy
    respond_to do |format|
      format.html { redirect_to etats_civils_url, notice: 'Etats civil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etats_civil
      @etats_civil = EtatsCivil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def etats_civil_params
      params.require(:etats_civil).permit(:id)
    end
end
