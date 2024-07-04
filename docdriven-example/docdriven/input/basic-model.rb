class TodoItem < ApplicationRecord
    validates :name, presence: true

    has_many: :comment, dependent: :destroy
end