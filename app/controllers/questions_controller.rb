class QuestionsController < ApplicationController
  def ask
  end

  def answer
    question = params[:question]

    if question.present?
      if question.include?('?')
        @answer = 'Silly question, get dressed and go to work!'
      elsif question == 'I am going to work'
        @answer = 'Great!'
      else
        @answer = 'I dont care, get dressed and go to work!'
      end
    end
  end
end
