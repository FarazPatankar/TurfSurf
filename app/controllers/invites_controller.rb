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
					@invite.send_text_message(attribute[:number],
						"Hey #{@invite.name}, your friend #{@invite.user.username} wants to play soccer with you.\n
						Details: http://localhost:3000/invites/#{@invite.id}")
					end
		end

		redirect_to game_path(@game)
	end

	def invite
		@game = Game.find_by(id: params[:game_id])
		@user = User.find_by(id: params[:id])
		sender_id = @game.user_id
		@sender = User.find_by(id: sender_id)

		@invite = @game.invites.new(name: @user.username, email: @user.email)
		@invite.user = @sender
		if @invite.save
			InviteMailer.invite_email(@invite).deliver_now
		end

		redirect_to game_path(@game)

	end

	def accept
		invite = Invite.find_by(id: params[:id])
		game = invite.game
		if invite.response == 0
			invite.response = 1
			invite.save
		end

		redirect_to game_path(game)
	end

	def reject
		invite = Invite.find_by(id: params[:id])
		game = invite.game
		if invite.response == 0
			invite.response = 2
			invite.save
		end

		render :text => "Okay :("
	end

	def show
		@invite = Invite.find_by(id: params[:id])
	end
end
