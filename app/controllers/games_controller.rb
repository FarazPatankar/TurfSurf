class GamesController < ApplicationController
	def create
		@arena = Arena.find_by(id: params[:arena_id])
		@game = @arena.games.new(game_params)
		@game.user = current_user

		if @game.save
			redirect_to arena_game_path(@arena, @game)
		else
			redirect_to arena_path(@arena)
		end
	end

	def show
		@arena = Arena.find_by(id: params[:arena_id])
		@game = @arena.games.find_by(id: params[:id])
		@invite = @game.invites.new
	end

	private
	def game_params
		params.require(:game).permit(:start_time, :end_time)
	end
end
