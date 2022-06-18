class StyleGradesController < ApplicationController
  before_action :set_style_grade, only: %i[ show edit update destroy ]

  # GET /style_grades or /style_grades.json
  def index
    @style_grades = StyleGrade.all
  end

  # GET /style_grades/1 or /style_grades/1.json
  def show
  end

  # GET /style_grades/new
  def new
    @style_grade = StyleGrade.new
  end

  # GET /style_grades/1/edit
  def edit
  end

  # POST /style_grades or /style_grades.json
  def create
    @style_grade = StyleGrade.new(style_grade_params)

    respond_to do |format|
      if @style_grade.save
        format.html { redirect_to style_grade_url(@style_grade), notice: "Style grade was successfully created." }
        format.json { render :show, status: :created, location: @style_grade }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @style_grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /style_grades/1 or /style_grades/1.json
  def update
    respond_to do |format|
      if @style_grade.update(style_grade_params)
        format.html { redirect_to style_grade_url(@style_grade), notice: "Style grade was successfully updated." }
        format.json { render :show, status: :ok, location: @style_grade }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @style_grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /style_grades/1 or /style_grades/1.json
  def destroy
    @style_grade.destroy

    respond_to do |format|
      format.html { redirect_to style_grades_url, notice: "Style grade was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_style_grade
      @style_grade = StyleGrade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def style_grade_params
      params.require(:style_grade).permit(:style_id, :grade_id, :next_grade, :previous_grade)
    end
end
