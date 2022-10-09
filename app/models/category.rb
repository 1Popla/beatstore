class Category < ApplicationRecord

    has_many :beats
    validates :name, presence: true, uniqueness: true
end
