class Review < ApplicationRecord
	mount_uploader :img_url, ImageUploader
end
