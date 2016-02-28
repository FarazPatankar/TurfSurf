class ArenasController < ApplicationController
	before_action :authenticate_user!, only: [ "show" ]
	def index
		@arenas = Arena.all
	end

	def show
		@arena = Arena.find_by(id: params[:id])
		@game = @arena.games.new
	end
end
