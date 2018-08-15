class Cafe < ApplicationRecord
	mount_uploader :img_url, ImageUploader
end
