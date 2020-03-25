class Atmosphere < ApplicationRecord
    has_many :trees
    belongs_to :user
end
