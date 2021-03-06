Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get '/game' => 'games#name'
    get '/guess' => 'games#guess'
    get '/guess_number/:guess' => 'games#guess'
  end

end
