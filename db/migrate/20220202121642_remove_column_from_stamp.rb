class RemoveColumnFromStamp < ActiveRecord::Migration[6.1]
  def up
    remove_column :stamps, :arrive_time, :string
    remove_column :stamps, :leave_time, :string
    remove_column :stamps, :work_time, :integer
    add_column :stamps, :stamping, :string
  end
end
