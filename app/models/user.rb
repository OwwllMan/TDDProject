class User < ApplicationRecord
    validates :firstname, presence: true, length: {maximum: 50}
    validates :lastname, presence: true, length: {maximum: 50}
    validates :email, presence: true, length: {maximum: 250}, uniqueness: {case_sensitive: false}
    has_secure_password
    validates :password, presence: true, length: {minimum: 6}
end
