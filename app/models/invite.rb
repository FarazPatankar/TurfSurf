class Invite < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  validates :name, :email, presence: true
end
