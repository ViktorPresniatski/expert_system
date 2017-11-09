class Questionnare < ApplicationRecord
  def parse_data
    JSON.parse(data)
  end
end