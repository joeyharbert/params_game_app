class Api::GamesController < ApplicationController
  def name
    @name = params[:name]
    if @name == nil
      @name = "Enter your name"
    end
    @name.upcase!
    if @name[0] == 'A'
      @message = "Hey, your name starts with the first letter of the alphabet!"
    else
      @message = "Aw, your name doesn't start with the first letter of the alphabet..."
    end
    render 'name.json.jbuilder'
  end

  @@num = rand(1..100)
  def guess

    #num = 36
    @user_guess = params[:guess].to_i

    if @user_guess <= 0 || @user_guess > 100 
      @message = "Please guess a number between 1-100"
    elsif @user_guess == @@num
      @message = "Correct!"
      @@num = rand(1..100)
    elsif @user_guess > @@num
      @message = "Too high! Guess again."
    elsif @user_guess < @@num
      @message = "Too low! Guess again."
    end
    render 'guess.json.jbuilder'
  end
end
