class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name, null: false, index: { unique: true }
      t.string :description
      t.string :homepage
      t.text :note

      t.timestamps
    end
  end
end
