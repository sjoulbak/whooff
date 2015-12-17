class Photo < ActiveRecord::Base
	dragonfly_accessor :image
	validates_property :ext, of: :image, as: 'jpg'
end
