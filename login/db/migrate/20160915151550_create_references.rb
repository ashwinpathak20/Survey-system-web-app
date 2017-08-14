class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.references :user , foreign_key: true
	  t.references :question , foreign_key: true
	  t.references :option ,  foreign_key: true
      t.timestamps null: false
    end
  end
end
