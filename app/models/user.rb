class User < ApplicationRecord
  include DeviseTokenAuth::Concerns::User
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_save -> { skip_confirmation! }

  has_many :problem_requests, foreign_key: 'author_id'
  has_many :expert_responses, foreign_key: 'expert_id'
  has_many :expert_questionnare_responses, foreign_key: 'expert_id'
end
