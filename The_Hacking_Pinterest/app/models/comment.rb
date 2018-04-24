class Comment < ApplicationRecord
    belongs_to :pin, required: false
end
