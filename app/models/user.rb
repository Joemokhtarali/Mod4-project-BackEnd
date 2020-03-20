class User < ApplicationRecord
    has_many :trees 
    has_many :atmospheres, through: :trees
end
