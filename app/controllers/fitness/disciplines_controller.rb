class Fitness::DisciplinesController < ApplicationController
  before_action :set_fitness_discipline, only: [:show, :edit, :update, :destroy]

  # GET /fitness/disciplines
  # GET /fitness/disciplines.json
  def index
    @fitness_disciplines = Fitness::Discipline.all
  end

  # GET /fitness/disciplines/1
  # GET /fitness/disciplines/1.json
  def show
  end

  # GET /fitness/disciplines/new
  def new
    @fitness_discipline = Fitness::Discipline.new
  end

  # GET /fitness/disciplines/1/edit
  def edit
  end

  # POST /fitness/disciplines
  # POST /fitness/disciplines.json
  def create
    @fitness_discipline = Fitness::Discipline.new(fitness_discipline_params)

    respond_to do |format|
      if @fitness_discipline.save
        format.html { redirect_to @fitness_discipline, notice: 'Discipline was successfully created.' }
        format.json { render :show, status: :created, location: @fitness_discipline }
      else
        format.html { render :new }
        format.json { render json: @fitness_discipline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fitness/disciplines/1
  # PATCH/PUT /fitness/disciplines/1.json
  def update
    respond_to do |format|
      if @fitness_discipline.update(fitness_discipline_params)
        format.html { redirect_to @fitness_discipline, notice: 'Discipline was successfully updated.' }
        format.json { render :show, status: :ok, location: @fitness_discipline }
      else
        format.html { render :edit }
        format.json { render json: @fitness_discipline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fitness/disciplines/1
  # DELETE /fitness/disciplines/1.json
  def destroy
    @fitness_discipline.destroy
    respond_to do |format|
      format.html { redirect_to fitness_disciplines_url, notice: 'Discipline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fitness_discipline
      @fitness_discipline = Fitness::Discipline.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fitness_discipline_params
      params.require(:fitness_discipline).permit(:name, :enabled)
    end
end
