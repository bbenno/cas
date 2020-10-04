class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :co_name, null: true
      t.string :street_address
      t.string :city
      t.string :zip_code
      t.string :country_code, limit: 2, index: true
      t.string :label, null: true
      t.belongs_to :letterable, polymorphic: true, index: { unique: true }

      t.timestamps
    end
  end
end
