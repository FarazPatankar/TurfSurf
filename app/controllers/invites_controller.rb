class InvitesController < ApplicationController
	def create
		@game = Game.find_by(id: params[:game_id])
		user_id = @game.user_id
		@user = User.find_by(id: user_id)

		attributes = params[:invite]

		attributes.each do |attribute|
				@invite = @game.invites.new(name: attribute[:name], email: attribute[:email])
				@invite.user = @user
				if @invite.save
					InviteMailer.invite_email(@invite).deliver_now
				end
		end

		redirect_to game_path(@game)
	end

	def invite
		@game = Game.find_by(id: params[:game_id])
		@user = User.find_by(id: params[:id])

		@invite = @game.invites.new(name: @user.username, email: @user.email)
		@invite.user = current_user
		if @invite.save
			InviteMailer.invite_email(@invite).deliver_now
		end

		redirect_to game_path(@game)

	end

	def accept
		invite = Invite.find_by(id: params[:id])
		game = invite.game
		invite.response = 1
		invite.save

		redirect_to game_path(game)
	end

	def reject
		invite = Invite.find_by(id: params[:id])
		invite.response = 2
		invite.save

		render :text => "Okay :("
	end
end
