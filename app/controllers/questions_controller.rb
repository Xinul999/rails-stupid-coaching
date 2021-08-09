class QuestionsController < ApplicationController
  def home
  end
  def ask
  end
  def answer
    @answer = params[:answer]
    @coach = ""
    if "I am going to work".downcase == @answer.downcase
      @coach = "Great!"
    elsif @answer.end_with?("?")
      @coach = "Silly question, get dressed and go to work!"
    else
      @coach = "I don't care, get dressed and go to work!"
    end
  end
end
