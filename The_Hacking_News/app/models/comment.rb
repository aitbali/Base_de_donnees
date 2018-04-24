class Comment < ApplicationRecord
    belongs_to :url, required: false
    has_many :comments
end
