class AddUserToStages < ActiveRecord::Migration[5.2]
  def change
    add_reference :stages, :user, foreign_key: true
  end
end
