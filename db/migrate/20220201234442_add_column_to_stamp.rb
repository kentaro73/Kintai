class AddColumnToStamp < ActiveRecord::Migration[6.1]
  def up
    add_column :stamps, :user_name, :string
    add_column :stamps, :date, :string
  end

  def down
    remove_column :stamps, :user_name, :string
    remove_column :stamps, :date, :string
  end
end
