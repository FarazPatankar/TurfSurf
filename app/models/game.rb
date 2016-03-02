class Game < ActiveRecord::Base
  belongs_to :arena
  belongs_to :user
  has_many :invites
  has_many :requests

  validates :start_time, :end_time, presence: true

  def tweet(user, arena, game_id)
  	client = Twitter::REST::Client.new do |config|
	  config.consumer_key        = ENV['twitter_consumer_key']
	  config.consumer_secret     = ENV['twitter_consumer_secret']
	  config.access_token        = ENV['twitter_access_token']
	  config.access_token_secret = ENV['twitter_access_token_secret']
	end

  url = ENV[:SITE_URL]
	client.update("#{user} just created a game at #{arena}. Details: http://#{url}/games/#{game_id}")
  end
end
