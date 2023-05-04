class Dog < ApplicationRecord
  has_many :inters
  has_many :strolls, through: :inters
  has_many :dogsitters, through: :strolls
  belongs_to :city
end
