class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.references :user , foreign_key: true
	  t.references :survey , foreign_key: true
      t.timestamps null: false
    end
  end
end
