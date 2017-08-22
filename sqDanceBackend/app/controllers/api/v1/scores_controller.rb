class Api::V1::ScoresController < ApplicationController

	def index
		scores = Score.all
		render json: scores
	end

	def create
		Score.create(score_params)
	end


	private

	def score_params
		params.require(:data).permit(:initials, :score)
	end
end
