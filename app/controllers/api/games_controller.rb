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
end
