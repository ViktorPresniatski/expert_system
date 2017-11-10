class ProblemRequest < ApplicationRecord
  has_many :expert_responses
  has_one :expert_questionnare_response
  belongs_to :questionnare
  belongs_to :category
  belongs_to :author, class_name: 'User'

  def add_response(response_params, current_user)
    if (current_user.is_expert)
      expert_response = ExpertResponse.create(response_params)
      expert_response.expert = current_user
      expert_response.problem_request_id = id
      expert_response.save!
      expert_responses << expert_response
      expert_response
    else
      errors.add(:base, message: "You not expert")
    end
  end
end
