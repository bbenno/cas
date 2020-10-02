class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :description
      t.address :address
      t.text :note

      t.timestamps
    end
  end
end
