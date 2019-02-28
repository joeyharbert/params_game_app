class Api::GamesController < ApplicationController
  def name
    @name = params[:name]
    if @name == nil
      @name = "Enter your name"
    end
    if @name[0].downcase == 'a'
      @message = "Hey, your name starts with the first letter of the alphabet!"
    else
      @message = "Aw, your name doesn't start with the first letter of the alphabet..."
    end
    render 'name.json.jbuilder'
  end

  def guess
    num = 36
    @user_guess = params[:guess].to_i

    if @user_guess == nil
      @message = "Please guess a number between 1-100"
    elsif @user_guess == num
      @message = "Correct!"
    else
      @message = "Guess again."
    end
    render 'guess.json.jbuilder'
  end
end
