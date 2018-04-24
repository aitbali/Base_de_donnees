class Pin < ApplicationRecord
    belongs_to :user, required: false
    has_many :comments
end
