class Album < ApplicationRecord
  belongs_to :category

  has_many :photos
  has_many :tags, through: tag_relations
end
