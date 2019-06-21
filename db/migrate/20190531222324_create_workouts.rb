class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end
