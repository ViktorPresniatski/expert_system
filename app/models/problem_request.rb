class ProblemRequest < ApplicationRecord
  has_many :expert_responses
  has_one :expert_questionnare_response
  belongs_to :questionnare
  belongs_to :category
  belongs_to :author, class_name: 'User'
end