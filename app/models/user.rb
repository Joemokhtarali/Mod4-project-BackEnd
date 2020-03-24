class User < ApplicationRecord
    has_many :atmospheres

    validates :name, uniqueness: true 

    has_secure_password
end
