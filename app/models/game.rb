class Game < ActiveRecord::Base
  belongs_to :arena
  belongs_to :user
end
