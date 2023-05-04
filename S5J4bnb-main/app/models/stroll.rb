class Stroll < ApplicationRecord
  has_many :inters
  has_many :dogs, through: :inters
  belongs_to :dogsitter
end
