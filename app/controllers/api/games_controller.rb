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

  @@num = nil
  def guess
    if params[:guess] == nil
       @@num = rand(1..100)
      # p "*" * 80
      # p @@num
      # p "*" * 80    #test code
     end 

    #num = 36
    @user_guess = params[:guess].to_i

    if @user_guess <= 0 || @user_guess > 100 
      @message = "Please guess a number between 1-100"
    elsif @user_guess == @@num
      @message = "Correct!"
    elsif @user_guess > @@num
      @message = "Too high! Guess again."
    elsif @user_guess < @@num
      @message = "Too low! Guess again."
    end
    render 'guess.json.jbuilder'
  end
end
