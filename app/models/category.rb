class Category < ApplicationRecord
  has_many :problem_requests
end