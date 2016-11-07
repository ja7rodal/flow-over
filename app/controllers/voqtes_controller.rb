class VoqtesController < ApplicationController
  def create
    question = Question.find(params[:question_id])
    question.voqtes.create(user: current_user)

    redirect_to :back
  end

  def destroy
    question = Question.find(params[:question_id])
    question.voqtes.where(user: current_user).take.try(:destroy)
    redirect_to :back

  end

end
