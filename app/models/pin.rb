# == Schema Information
#
# Table name: pins
#
#  id         :integer          not null, primary key
#  title      :string(255)      not null
#  url        :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

class Pin < ActiveRecord::Base
  has_many :board_assignments
  has_many :boards, :through => :board_assignments, :source => :board
  has_many :owners, :through => :boards, :source => :owner
end
