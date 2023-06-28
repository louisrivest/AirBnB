class CreateApts < ActiveRecord::Migration[7.0]
  def change
    create_table :apts do |t|
      t.string :address
      t.string :city
      t.integer :price
      t.integer :latitude
      t.integer :longitude
      t.string :title

      t.timestamps
    end
  end
end
