class InvitesController < ApplicationController
	def create
		@game = Game.find_by(id: params[:game_id])

		attributes = params[:invite]

		attributes.each do |attribute|
				@invite = @game.invites.new(name: attribute[:name], email: attribute[:email])
				@invite.user = current_user
				@invite.save
		end

		redirect_to root_path
	end
end
