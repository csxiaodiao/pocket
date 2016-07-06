class TagRelation < ApplicationRecord
  belongs_to :tag
  belongs_to :album
end
