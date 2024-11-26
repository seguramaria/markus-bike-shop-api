class Incompatibility < ApplicationRecord
    belongs_to :item1, polymorphic: true
    belongs_to :item2, polymorphic: true
end
