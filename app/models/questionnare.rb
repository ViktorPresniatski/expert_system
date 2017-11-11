class Questionnare < ApplicationRecord
  has_many :problem_requests

  def parse_data
    JSON.parse(data)
  end
end
