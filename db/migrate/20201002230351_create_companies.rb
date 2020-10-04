class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name, index: { unique: true }
      t.string :description
      t.string :industry, index: true
      t.string :homepage_url
      t.text :note
      t.integer :status, index: true
      t.string :email

      t.timestamps
    end
  end
end
