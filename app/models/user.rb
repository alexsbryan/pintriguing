# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)      not null
#  password_digest :string(255)      not null
#  session_token   :string(255)
#  first_name      :string(255)      not null
#  last_name       :string(255)      not null
#  photo_url       :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  attr_reader :password

  validates :email, :session_token, :uniqueness => true
  validates :email, :session_token, :password_digest, :first_name, :last_name, :presence => true
  validates :password, :length => {:minimum => 6, :allow_nil => true}
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create}
  before_validation :ensure_session_token

  #associations
  has_many(
  :boards,
  :class_name => "Board",
  :foreign_key => :owner_id,
  )

  ##has_many :categories
  has_many :categories, :through => :boards, :source => :categories
  ##has_many :pins
  has_many :pins, :through => :boards, :source => :pins


  def self.find_by_credentials(email,password)
    user = User.find_by({email: email})
    user.try(:is_password?, password) ? user : nil
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

  def password=(unenc_password)
    if unenc_password.present?
      @password = unenc_password
      self.password_digest = BCrypt::Password.create(unenc_password)
    end
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token!
    self.session_token = self.class.generate_session_token
    self.save!
    self.session_token
  end

  private

  def ensure_session_token
    self.session_token ||= self.class.generate_session_token
  end
end
