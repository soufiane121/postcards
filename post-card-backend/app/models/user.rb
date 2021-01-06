class User < ApplicationRecord
    has_secure_password

    has_many :gifts, dependent: :destroy
    has_many :cards, through: :gifts
    
    validates :first_name, :last_name, :age, :address, presence: { message: "must be given please" }
    validates :email, presence: true, uniqueness: true
    validates :password_digest, length: { minimum: 6 }


end
