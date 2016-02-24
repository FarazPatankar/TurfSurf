class ArenasController < ApplicationController
	def index
		@arenas = Arena.all
	end

	def show
		@arena = Arena.find_by(id: params[:id])
		@game = @arena.games.new
	end
end
