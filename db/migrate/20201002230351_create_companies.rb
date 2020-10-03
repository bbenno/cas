class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name, index: { unique: true }
      t.string :description
      t.string :homepage_url
      t.text :note

      t.timestamps
    end
  end
end
