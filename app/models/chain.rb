class Chain < ApplicationRecord
    has_many :incompatibilities, as: :item1
    has_many :incompatible_with, through: :incompatibilities, source: :item2
end
