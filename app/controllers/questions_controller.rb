class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = ['Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!", 'Great!']

    if params[:question]
      if params[:question].include? '?'
        @answers = @answers[0]
      elsif params[:question].include? 'I am going to work'
        @answers = @answers[2]
      else
        @answers = @answers[1]
      end
    end
  end
end
