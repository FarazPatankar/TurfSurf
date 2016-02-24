class Arena < ActiveRecord::Base
	has_many :games

	mount_uploader :image, ArenaImageUploader
end
