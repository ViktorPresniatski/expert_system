class CreateExpertQuestionnareResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :expert_questionnare_responses do |t|
      t.references :expert, foreign_key: true
      t.references :problem_request, foreign_key: true
      t.text :response_data

      t.timestamps
    end
  end
end
