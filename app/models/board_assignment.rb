# == Schema Information
#
# Table name: board_assignments
#
#  id         :integer          not null, primary key
#  board_id   :integer          not null
#  pin_id     :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class BoardAssignment < ActiveRecord::Base
end
