class UsersController < ApplicationController
	def show
		@user = User.find_by(id: params[:id])
		@past_games = @user.games.where('start_time < ?', Time.zone.now)
		@upcoming_games = @user.games.where('start_time > ?', Time.zone.now)
	end
end
