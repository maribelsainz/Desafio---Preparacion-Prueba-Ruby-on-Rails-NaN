class Project < ApplicationRecord
  has_many :assignations
  has_many :people, through: :assignations
end
