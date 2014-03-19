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

  validates :username, :session_token, :uniqueness => true
  validates :username, :session_token, :password_digest, :first_name, :last_name, :presence => true
  validates :password, :length => {:minimum => 6, :allow_nil => true}
  validates :username, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create}
  before_validation :ensure_session_token

  #associations

  def self.find_by_credentials(username,password)
    user = User.find_by({username: username})
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