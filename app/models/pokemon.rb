class Pokemon < ApplicationRecord
    belongs_to :user
    has_many :pokemon through: :user
    has_many :teams through: :user
    validates :name, presence: { message: "Pokemon name can't be blank" }, uniqueness: { message: "Name must be unique" }
end