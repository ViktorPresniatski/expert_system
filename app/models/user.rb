class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :problem_requests, foreign_key: 'author_id'
  has_many :expert_responses, foreign_key: 'expert_id'
  has_many :expert_questionnare_responses, foreign_key: 'expert_id'

  def expert?
    is_expert
  end
end
