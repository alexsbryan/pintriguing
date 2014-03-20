# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  title      :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

class Category < ActiveRecord::Base
  has_many(
  :category_assignments,
  :foreign_key => :cat_id
  )
  has_many :boards, :through => :category_assignments, :source => :board, :inverse_of=> :categories

  has_many :pins, :through => :boards, :source => :pins

end
