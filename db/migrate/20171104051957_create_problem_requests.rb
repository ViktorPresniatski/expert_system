class CreateProblemRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :problem_requests do |t|
      t.string :name
      t.text :description
      t.references :questionnare, index: true
      t.references :category, index: true
      t.references :author, index: true

      t.timestamps
    end
  end
end
