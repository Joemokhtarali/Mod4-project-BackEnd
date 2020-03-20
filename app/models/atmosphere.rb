class Atmosphere < ApplicationRecord
    has_many :trees
    has_many :users, through: :trees
end
