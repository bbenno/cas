class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :co_name
      t.string :street_address
      t.string :city
      t.string :zip_code
      t.string :country_code, limit: 2
      t.string :label

      t.index :country_code

      t.timestamps
    end
  end
end
