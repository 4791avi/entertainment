Rails.application.routes.draw do
	namespace :api do
		namespace :v1 do
			 post :load_movies, to: "movies#load_movies"
			 resources :genres				 
			 resources :movies
		end
	end
end
