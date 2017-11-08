class CreateExpertResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :expert_responses do |t|
      t.references :expert, foreign_key: true
      t.references :ProblemRequest, foreign_key: true
      t.text :responce_date

      t.timestamps
    end
  end
end
