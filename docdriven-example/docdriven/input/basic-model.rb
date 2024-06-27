class TodoItem < ApplicationRecord
    validates :name, presence: true
end