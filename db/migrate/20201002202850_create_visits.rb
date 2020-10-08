class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.integer :user_id
      t.integer :garden_id
      t.string :purpose
      t.string :date
      t.string :intime
      t.string :outtime
      t.string :scheduledin
      t.string :scheduledout

      t.timestamps
    end
  end
end
