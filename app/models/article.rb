class Article < ApplicationRecord
	# Action-Text
	has_rich_text :content
	# Validates
	validates :headline, presence: true
	
end
