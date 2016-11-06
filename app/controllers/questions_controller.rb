class QuestionsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show ]

  def index
    @question = Question.all
  end

  def new
    @question = Question.new
  end


  def create
    @question = Question.new(question_params)
    @question.user = current_user
    if @question.save
      redirect_to root_path, notice: "Pregunta publicada con exito"
    else
      render :new
    end
  end


  def show
    @question = Question.find(params[:id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to root_path, notice: "Pregunta actualizada correctamente"
    else
      render :edit
    end
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy
    redirect_to root_path, notice:"Pregunta eliminada con exito"
  end


  private
    def question_params
      params.require(:question).permit(:title, :description)
    end

end
