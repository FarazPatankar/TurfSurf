class ArenasController < ApplicationController
	def index
		@arenas = Arena.all
	end
end
