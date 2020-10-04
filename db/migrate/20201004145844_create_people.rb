class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.belongs_to :company, null: false, foreign_key: true
      t.string :phone
      t.date :date_of_birth
      t.text :note
      t.string :role

      t.timestamps
    end
  end
end
