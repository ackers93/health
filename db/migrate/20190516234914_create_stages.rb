class CreateStages < ActiveRecord::Migration[5.2]
  def change
    create_table :stages do |t|
      t.float :weight
      t.float :height
      t.float :neck
      t.float :shoulders
      t.float :chest
      t.float :biceps
      t.float :waist
      t.float :hips
      t.float :thighs

      t.timestamps
    end
  end
end
