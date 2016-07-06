class Tag < ApplicationRecord
  belongs_to :album

  acts_as_paranoid

  DATA = %w(
  )
end
