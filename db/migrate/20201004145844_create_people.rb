class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name, index: true
      t.string :email
      t.belongs_to :company, foreign_key: true
      t.string :phone
      t.date :date_of_birth
      t.text :note
      t.string :role, comment: 'role in company'

      t.timestamps
    end
  end
end
