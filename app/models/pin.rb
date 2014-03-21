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

  before_save :sanitize_website

    def sanitize_website
      unless self.img_url.include?("http://") || self.img_url.include?("https://")
        self.img_url = "http://" + self.img_url
      end
      unless self.url.include?("http://") || self.url.include?("https://")
        self.url = "http://" + self.url
      end
    end

    def self.random_pins
      self.order("RANDOM()")
    end
end
