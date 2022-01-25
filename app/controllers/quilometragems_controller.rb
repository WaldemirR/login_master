class QuilometragemsController < ApplicationController
  before_action :set_quilometragem, only: %i[ show edit update destroy ]

  # GET /quilometragems or /quilometragems.json
  def index
    @quilometragems = Quilometragem.all
  end

  # GET /quilometragems/1 or /quilometragems/1.json
  def show
  end

  # GET /quilometragems/new
  def new
    @quilometragem = Quilometragem.new
  end

  # GET /quilometragems/1/edit
  def edit
  end

  # POST /quilometragems or /quilometragems.json
  def create
    @quilometragem = Quilometragem.new(quilometragem_params)

    respond_to do |format|
      if @quilometragem.save
        format.html { redirect_to quilometragem_url(@quilometragem), notice: "Dados gravados com sucesso." }
        format.json { render :show, status: :created, location: @quilometragem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quilometragem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quilometragems/1 or /quilometragems/1.json
  def update
    respond_to do |format|
      if @quilometragem.update(quilometragem_params)
        format.html { redirect_to quilometragem_url(@quilometragem), notice: "Abaixo dados preenchidos e gravados na base" }
        format.json { render :show, status: :ok, location: @quilometragem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quilometragem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quilometragems/1 or /quilometragems/1.json
  def destroy
    @quilometragem.destroy

    respond_to do |format|
      format.html { redirect_to quilometragems_url, notice: "Quilometragem was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quilometragem
      @quilometragem = Quilometragem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quilometragem_params
      params.require(:quilometragem).permit(:date, :name, :state, :city, :addres, :client, :board, :startingkm, :finalkm)
    end
end
