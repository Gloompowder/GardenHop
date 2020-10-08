class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :email
      t.integer :phone
      t.string :address
      t.string :apartment
      t.string :city
      t.string :state
      t.integer :zipcode
      t.boolean :volunteer

      t.timestamps
    end
  end
end
