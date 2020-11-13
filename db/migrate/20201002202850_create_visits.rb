class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.integer :user_id
      t.integer :garden_id
      t.string :purpose
      t.datetime :in_time
      t.datetime :out_time
      t.datetime :scheduled_in
      t.datetime :scheduled_out

      t.timestamps
    end
  end
end
