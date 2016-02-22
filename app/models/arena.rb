class Arena < ActiveRecord::Base

	mount_uploader :image, ArenaImageUploader
end
