class Request < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  validates :email, presence: true
end
