class CreateStamps < ActiveRecord::Migration[6.1]
  def change
    create_table :stamps do |t|
      t.string :arrive_time
      t.string :leave_time
      t.integer :work_time

      t.timestamps
    end
  end
end
