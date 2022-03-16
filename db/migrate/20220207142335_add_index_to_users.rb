class AddIndexToUsers < ActiveRecord::Migration[6.1]
  def change
    add_index :attendances, [:user_id, :created_at]
  end
end
