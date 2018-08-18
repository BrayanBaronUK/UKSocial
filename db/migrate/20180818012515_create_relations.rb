class CreateRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :relations do |t|
      t.references :user, foreign_key: true
      t.integer :user_invited
      t.boolean :visible_name
      t.boolean :visible_last_name
      t.boolean :visible_born_date
      t.boolean :visible_phone
      t.boolean :visible_email

      t.timestamps
    end
  end
end
