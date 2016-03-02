class RequestsController < ApplicationController
	def please
		game = Game.find_by(id: params[:game_id])
		user = User.find_by(id: params[:id])

		receiver_id = game.user_id
		receiver = User.find_by(id: receiver_id)
		@request = Request.new(name: receiver.username, email: receiver.email)
		@request.user_id = user.id
		@request.game_id = game.id

		if @request.save
			RequestMailer.request_email(@request).deliver_now
			flash[:requestsuccess] = "Your request was successfully sent."
		end

		redirect_to games_path
	end
end
