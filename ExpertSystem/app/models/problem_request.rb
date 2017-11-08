class ProblemRequest < ApplicationRecord
  belongs_to :questionnare
  belongs_to :category
  belongs_to :author
end