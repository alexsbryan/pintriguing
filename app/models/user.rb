class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many(
          :boards,
          :class_name => "Board",
          :foreign_key => :owner_id,
          )

          ##has_many :categories
          has_many :categories, :through => :boards, :source => :categories
          ##has_many :pins
          has_many :pins, :through => :boards, :source => :pins

end
