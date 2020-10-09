class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.integer :user_id
      t.integer :garden_id
      t.string :purpose
      t.string :date
      t.string :in_time
      t.string :out_time
      t.string :scheduled_in
      t.string :scheduled_out

      t.timestamps
    end
  end
end
