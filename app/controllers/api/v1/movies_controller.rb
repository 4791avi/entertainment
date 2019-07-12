module Api
	module V1
		class MoviesController < ApplicationController
			skip_before_action :verify_authenticity_token
			def index
				movies = Movie.all
				render json: {status: "SUCCESS", message: "Loaded Movies", data: movies}, status: :ok 
			end

			def new
			  @movie = Movie.new
			end

			def create
			  @movie = Movie.new(movie_params)
			  if @movie.save
			    render json: {status: "SUCCESS", message: "Movie Saved", data: @movie}, status: :ok
			  else
			  	render json: {status: "ERROR", message: "Movie not saved", data: @movie.errors}, status: :unprocessable_entity
			  end
			end

			def show
				movie = Movie.find(params[:id])
				render json: {status: "SUCCESS", message: "Loaded movies", data: movie}, status: :ok 				
			end

			def edit
			end


			def update
				movie = Movie.find(params[:id])
				if movie.update_attributes(movie_params)
					  render json: {status: "SUCCESS", message: "Movie Updated", data: movie}, status: :ok
				else
					render json: {status: "ERROR", message: "Movie not updated", data: movie.errors}, status: :unprocessable_entity
				end
			end

			def destroy
				if params[:id]
					movie = Movie.find(params[:id])
					movie.destroy
					render json: {status: "SUCCESS", message: "Movie deleted succesfully", data: movie}, status: :ok
				else
					render json: {status: "ERROR", message: "Movie not found with id", data: params[:id]}, status: :unprocessable_entity
				end
			end

			def load_movies
				if params[:genre_id]
					movies = Movie.where(genre_id: params[:genre_id])
					render json: {status: "SUCCESS", message: "Loaded Movies", data: movies}, status: :ok 		
				else
					render json: {status: "ERROR", message: "sorting is not valid", data: movies.errors}, status: :unprocessable_entity
				end				
			end

			private

			def movie_params
				params.permit(:title, :year, :director, :tag_list, :genre_id)
			end
		end
	end
end