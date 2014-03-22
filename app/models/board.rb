# == Schema Information
#
# Table name: boards
#
#  id          :integer          not null, primary key
#  name        :string(255)      not null
#  description :text
#  owner_id    :integer          not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Board < ActiveRecord::Base
  belongs_to(
  :owner,
  :class_name => "User",
  :foreign_key => :owner_id,
  )

  has_many(
  :category_assignments,
  :foreign_key => :board_id
  )
  has_many :board_assignments

  has_many :pins, :through => :board_assignments, :source => :pin

  has_many :categories, :through => :category_assignments, :source => :category, :inverse_of => :boards


end
