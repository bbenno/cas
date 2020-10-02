class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :co_name
      t.string :street
      t.string :city
      t.string :zipcode
      t.string :country, limit: 2
      t.string :label

      t.timestamps
    end
  end
end
