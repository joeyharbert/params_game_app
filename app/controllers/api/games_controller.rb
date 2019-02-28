class Api::GamesController < ApplicationController
  def name
    render 'name.json.jbuilder'
  end
end
