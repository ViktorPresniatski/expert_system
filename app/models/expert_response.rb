class ExpertResponse < ApplicationRecord
  belongs_to :expert, class_name: 'User'
  belongs_to :problem_request
end