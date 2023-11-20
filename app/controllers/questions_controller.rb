class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answer = ''
    @question = params[:question]
    if(@question)
      case
      when @question == 'i am going to work'
        @answer = 'Great!'
      when @question.end_with?('?')
        @answer = 'Silly questions, get dressed and go to work!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
