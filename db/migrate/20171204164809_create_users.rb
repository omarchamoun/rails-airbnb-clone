class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.boolean :owner
      t.references :registration, foreign_key: true

      t.timestamps
    end
  end
end
