class CreateQuestionnares < ActiveRecord::Migration[5.1]
  def change
    create_table :questionnares do |t|
      t.string :title
      t.string :description
      t.text :data

      t.timestamps
    end
  end
end
