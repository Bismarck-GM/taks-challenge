class Task < ApplicationRecord
  belongs_to :project, optional: true
  belongs_to :template, optional: true
end
