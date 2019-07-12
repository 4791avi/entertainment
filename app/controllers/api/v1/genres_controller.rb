module Api
	module V1
		class GenresController < ApplicationController
			skip_before_action :verify_authenticity_token
			def index
				genres = Genre.all
				render json: {status: "SUCCESS", message: "Loaded Genres", data: genres}, status: :ok 
			end

			def new
			  @genre = Genre.new
			end

			def create
			  @genre = Genre.new(genre_params)
			  if @genre.save
			    render json: {status: "SUCCESS", message: "Genre Saved", data: @genre}, status: :ok
			  else
			  	render json: {status: "ERROR", message: "Genre not saved", data: @genre.errors}, status: :unprocessable_entity
			  end
			end

			def show
				genre = Genre.find(params[:id])
				render json: {status: "SUCCESS", message: "Loaded genres", data: genre}, status: :ok 				
			end

			def edit
			end


			def update
				genre = Genre.find(params[:id])
				if genre.update_attributes(genre_params)
					  render json: {status: "SUCCESS", message: "Genre Updated", data: genre}, status: :ok
				else
					render json: {status: "ERROR", message: "Genre not updated", data: genre.errors}, status: :unprocessable_entity
				end
			end

			def destroy
				if params[:id]
					genre = Genre.find(params[:id])
					genre.destroy
					render json: {status: "SUCCESS", message: "Genre deleted succesfully", data: genre}, status: :ok
				else
					render json: {status: "ERROR", message: "Genre not found with id", data: params[:id]}, status: :unprocessable_entity
				end
			end

			private

			def genre_params
				params.permit(:name)
			end
		end
	end
end