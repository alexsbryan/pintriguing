# == Schema Information
#
# Table name: category_assignments
#
#  id         :integer          not null, primary key
#  board_id   :integer          not null
#  cat_id     :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class CategoryAssignments < ActiveRecord::Base
end
