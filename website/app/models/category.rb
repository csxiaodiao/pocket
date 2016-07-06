class Category < ApplicationRecord
  acts_as_paranoid
  has_closure_tree

  has_many :albums

  DATA = {}






end
