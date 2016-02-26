class Game < ActiveRecord::Base
  belongs_to :arena
  belongs_to :user
  has_many :invites
  has_many :requests
end
