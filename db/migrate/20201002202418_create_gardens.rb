class CreateGardens < ActiveRecord::Migration[6.0]
  def change
    create_table :gardens do |t|
      t.string :property_id
      t.string :boro
      t.string :community_board
      t.string :address
      t.string :garden_size
      t.string :jurisdiction
      t.string :neighborhood_home
      t.string :cross_streets
      t.string :latitude
      t.string :longitude
      t.string :postcode

      t.timestamps
    end
  end
end
