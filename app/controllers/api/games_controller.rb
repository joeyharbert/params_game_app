class Api::GamesController < ApplicationController
  def name
    @name = params[:name]
    if @name == nil
      @name = "Enter your name"
    end
    render 'name.json.jbuilder'
  end
end
