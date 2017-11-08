class ExpertQuestionnareResponse < ApplicationRecord
  belongs_to :expert
  belongs_to :ProblemRequest
end