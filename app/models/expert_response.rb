class ExpertResponse < ApplicationRecord
  belongs_to :expert, class_name: 'User'
  belongs_to :problem_request

  validate do |response|
    if !response.expert.expert?
      errors.add(:base, message: "You are not expert")
    end
  end
end
