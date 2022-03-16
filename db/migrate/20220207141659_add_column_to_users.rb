class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def up
    add_column :users, :admin, :boolean, default: false
    add_column :users, :name, :string
    add_column :users, :activation_digest, :string
    add_column :users, :activated, :boolean, default: false
    add_column :users, :activated_at, :datetime
    add_column :users, :reset_digest, :string
    add_column :users, :reset_sent_at, :datetime
  end

  def down
    remove_column :users, :admin, :boolean, default: false
    remove_column :users, :name, :string
    remove_column :users, :activation_digest, :string
    remove_column :users, :activated, :boolean, default: false
    remove_column :users, :activated_at, :datetime
    remove_column :users, :reset_digest, :string
  end
end
