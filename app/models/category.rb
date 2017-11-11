class Category < ApplicationRecord
  has_many :problem_requests
  belongs_to :parent, class_name: 'Category', optional: true
end