class ChangeColumnFromStamp < ActiveRecord::Migration[6.1]
  def up
    remove_column :stamps, :stamping, :string
    remove_column :stamps, :date, :string
    add_column :stamps, :stamping, :datetime
  end
end
