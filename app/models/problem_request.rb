class ProblemRequest < ApplicationRecord
  has_many :expert_responses
  has_one :expert_questionnare_response
  belongs_to :questionnare
  belongs_to :category
  belongs_to :author, class_name: 'User'

  def add_response(response_params, current_user)
    expert_response = ExpertResponse.new(response_params)
    expert_response.expert = current_user
    expert_response.problem_request_id = id
    if expert_response.save
      expert_responses << expert_response
    end
    expert_response
  end
end
