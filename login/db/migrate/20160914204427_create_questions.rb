class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
	  t.string :q_name
	  t.string :q_definition
	  t.references :survey , foreign_key: true
      t.timestamps null: false
    end
  end
end
