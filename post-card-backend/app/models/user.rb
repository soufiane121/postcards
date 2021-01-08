# require "bycrpt"

class User < ApplicationRecord
  has_secure_password

  has_many :gifts, dependent: :destroy
  has_many :cards, through: :gifts

  validates :first_name, :last_name, :age, :address, presence: { message: "must be given please" }
  validates :email, presence: true, uniqueness: true
  validates :password_digest, length: { minimum: 6 }

  def password=(arg)
    self.password_digest = BCrypt::Password.create(arg)
  end

  def password
    self.password_digest ||= Password.new(password_digest)
  end

  


end
