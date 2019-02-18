class Api::QuizController < ApplicationController
  def index
    questions = QuizService.get_questions()
    render json: { data: questions }
  end
end
