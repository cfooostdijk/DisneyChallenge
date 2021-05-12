class FilmographiesController < ApplicationController
  before_action :set_filmography, only: %i[show update destroy]

  # GET /filmographies
  def index
    @filmographies = Filmography.all

    render json: @filmographies
  end

  # GET /filmographies/1
  def show
    render json: @filmography, detailed: true
  end

  # POST /filmographies
  def create
    @filmography = Filmography.new(filmography_params)

    if @filmography.save
      render json: @filmography, status: :created, location: @filmography
    else
      render json: @filmography.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /filmographies/1
  def update
    if @filmography.update(filmography_params)
      render json: @filmography
    else
      render json: @filmography.errors, status: :unprocessable_entity
    end
  end

  # DELETE /filmographies/1
  def destroy
    @filmography.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_filmography
    @filmography = Filmography.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def filmography_params
    params.require(:filmography).permit(:title, :date, :stars, :genre, :character, :avatar)
  end
end
