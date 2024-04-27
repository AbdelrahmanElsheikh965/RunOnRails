class Emoji < ApplicationRecord
  # create a new association (post M:M emoji) -only care about the associations without the logic"
  has_and_belongs_to_many :posts
end
