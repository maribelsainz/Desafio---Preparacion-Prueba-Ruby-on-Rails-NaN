class Assignation < ApplicationRecord
  belongs_to :person
  belongs_to :project
  validates :project_id, uniqueness: { scope: :person_id, message: "usuario ya está en el proyecto"}
end
