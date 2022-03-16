class RemoveColumnFromUsers < ActiveRecord::Migration[6.1]
  def up
    remove_column :users, :name, :string
    remove_column :users, :activation_digest, :string
    remove_column :users, :activated, :boolean, default: false
    remove_column :users, :activated_at, :datetime
    remove_column :users, :reset_digest, :string
    remove_column :users, :reset_sent_at, :datetime
  end
end
