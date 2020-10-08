class CreateGardens < ActiveRecord::Migration[6.0]
  def change
    create_table :gardens do |t|
      t.string :propertyid
      t.string :boro
      t.string :communityboard
      t.string :address
      t.string :size
      t.string :jurisdiction
      t.string :neighborhoodhome
      t.string :cross_streets
      t.string :latitude
      t.string :longitude
      t.string :postcode

      t.timestamps
    end
  end
end
