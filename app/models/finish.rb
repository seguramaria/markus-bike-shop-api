class Finish < ApplicationRecord
  belongs_to :frame
  has_many :incompatibilities, as: :item2
  has_many :incompatible_with, through: :incompatibilities, source: :item1
end
