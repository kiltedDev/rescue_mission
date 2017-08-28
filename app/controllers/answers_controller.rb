class AnswersController < ApplicationController
  before_action :set_question, only: [:index, :show, :edit, :new, :update, :create]
  before_action :set_answer, only: [:index, :show, :edit, :update]

  # GET /answers
  def index

  end

  # GET /answers/1
  def show
  end

  # GET /answers/new
  def new
    @answer = Answer.new
  end

  # GET /answers/1/edit
  def edit
  end

  # POST /answers
  def create
    @answer = Answer.new(answer_params)

    if @answer.save
      redirect_to @question, notice: 'Answer was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /answers/1
  def update
    if @answer.update(answer_params)
      redirect_to @answer, notice: 'Answer was successfully updated.'
    else
      render :edit
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:question_id])
    end

    def set_answers
      @answers = @question.answers
    end

    # Only allow a trusted parameter "white list" through.
    def answer_params
      params.require(:answer).permit(:title, :description, :question_id)
    end
end
