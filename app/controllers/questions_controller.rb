class QuestionsController < ApplicationController

  def answer
    @question = params[:query]
    @answer = coach_answer_enhanced(@question)
  end

  def ask
  end

  def coach_answer_enhanced(your_message)
    answer = ''
      if your_message == "I am going to work right now!"
        answer = "Great!"
      elsif your_message.include?('?')
        answer = "Silly question, get dressed and go to work!"
      else
        answer = "I don't care, get dressed and go to work!"
      end
    answer
  end
end
