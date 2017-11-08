class CreateProblemRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :problem_requests do |t|
      t.string :name
      t.text :description
      t.references :questionnare, foreign_key: true
      t.references :category, foreign_key: true
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
