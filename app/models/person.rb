class Person < ApplicationRecord
  has_many :assignations
  has_many :projects, through: :assignations
end
