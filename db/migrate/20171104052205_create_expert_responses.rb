class CreateExpertResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :expert_responses do |t|
      t.references :expert, index: true
      t.references :problem_request, index: true
      t.text :response_text

      t.timestamps
    end
  end
end
