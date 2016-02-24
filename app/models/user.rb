class User < ActiveRecord::Base
  has_many :games
  has_many :invites
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         mount_uploader :image, UserImageUploader

  acts_as_messageable

  def mailboxer_name
  	self.name
  end

  def mailboxer_email(object)
  	self.email
  end
end
