class AddColumnTo < ActiveRecord::Migration[6.1]
  def up
    add_column :stamps, :arrive_flg, :boolean
  end
end
