class CategoryAssignment < ActiveRecord::Base
  belongs_to(
  :category,
  :foreign_key => :cat_id
  )
  belongs_to :board
end
