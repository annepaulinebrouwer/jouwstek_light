module PhotoHelper
	def cl_image_options_banner_small(other_options = {})
		{ 
			height: 300, 
			width: 400, 
			crop: :fit
		}.merge(other_options)
	end

	def cl_image_options_banner_medium(other_options = {})
		{ 
			height: 300, 
			width: 400, 
			crop: :fit
		}.merge(other_options)
	end

	def cl_image_options_banner_large(other_options = {})
		{ 
			height: 642,
			width: 1710,
			crop: :fit
		}.merge(other_options)
	end

	def cl_image_options_banner_extra_large(other_options = {})
		{ 
			height: 856,
			width: 2280,
			crop: :fit
		}.merge(other_options)
	end

	def cl_image_options_card_small(other_options = {})
		{ 
			height: 300, 
			width: 400, 
			crop: :fit
		}.merge(other_options)
	end

	def cl_image_options_card_medium(other_options = {})
		{ 
			height: 250, 
			width: 250, 
			crop: :fit
		}.merge(other_options)
	end

	def cl_image_options_card_large(other_options = {})
		{ 
			height: 300, 
			width: 400, 
			crop: :fit
		}.merge(other_options)
	end

	def cl_image_options_card_extra_large(other_options = {})
		{ 
			height: 450, 
			width: 600, 
			crop: :fit
		}.merge(other_options)
	end

	def cl_image_options_avatar_thumb(other_options = {})
		{ 
			height: 60, 
			width: 60, 
			crop: :fill
		}.merge(other_options)
	end
	def cl_image_options_avatar_small(other_options = {})
		{ 
			height: 140, 
			width: 140, 
			crop: :fill
		}.merge(other_options)
	end

	def cl_image_options_avatar_medium(other_options = {})
		{ 
			height: 200, 
			width: 200, 
			crop: :fill
		}.merge(other_options)
	end

	def cl_image_options_avatar_large(other_options = {})
		{ 
			height: 300, 
			width: 300, 
			crop: :fill
		}.merge(other_options)
	end

	def cl_image_options_avatar_extra_large(other_options = {})
		{ 
			height: 500, 
			width: 500, 
			crop: :fill
		}.merge(other_options)
	end
end

# cl_image_tag(photo, cl_image_options_medium)