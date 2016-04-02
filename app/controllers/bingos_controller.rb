class BingosController < ApplicationController
  before_action :set_bingo, only: [:show, :edit, :update, :destroy]

  # GET /bingos
  # GET /bingos.json
  def index
    @bingos = Bingo.all
  end

  # GET /bingos/1
  # GET /bingos/1.json
  def show
  end

  # GET /bingos/new
  def new
    @bingo = Bingo.new
  end

  # GET /bingos/1/edit
  def edit
  end

  # POST /bingos
  # POST /bingos.json
  def create
    @bingo = Bingo.new(bingo_params)

    respond_to do |format|
      if @bingo.save
        format.html { redirect_to @bingo, notice: 'Bingo was successfully created.' }
        format.json { render :show, status: :created, location: @bingo }
      else
        format.html { render :new }
        format.json { render json: @bingo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bingos/1
  # PATCH/PUT /bingos/1.json
  def update
    respond_to do |format|
      if @bingo.update(bingo_params)
        format.html { redirect_to @bingo, notice: 'Bingo was successfully updated.' }
        format.json { render :show, status: :ok, location: @bingo }
      else
        format.html { render :edit }
        format.json { render json: @bingo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bingos/1
  # DELETE /bingos/1.json
  def destroy
    @bingo.destroy
    respond_to do |format|
      format.html { redirect_to bingos_url, notice: 'Bingo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bingo
      @bingo = Bingo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bingo_params
      params.require(:bingo).permit(:name, :description, :picture)
    end
end
