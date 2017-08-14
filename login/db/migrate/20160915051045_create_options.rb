class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
	  t.string :q_option
	  t.references :survey ,  foreign_key: true
	  t.references :question , foreign_key: true
      t.timestamps null: false
    end
  end
end
