class User < ApplicationRecord
    has_many :trees 
    has_many :atmospheres, through: :trees

    validates :name, uniqueness: true 

    has_secure_password
end
