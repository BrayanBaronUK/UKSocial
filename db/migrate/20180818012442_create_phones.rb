class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.string :numbre_phone
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
