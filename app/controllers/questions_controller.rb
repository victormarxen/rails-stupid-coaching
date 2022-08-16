class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:answer]
    @answer = 'Great!'
    if @question == 'I am going to work right now!'
      @answer = 'Great!'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'Shut up, get dressed and go to work!'
    end
  end
end
