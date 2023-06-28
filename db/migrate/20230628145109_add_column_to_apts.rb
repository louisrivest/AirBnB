class AddColumnToApts < ActiveRecord::Migration[7.0]
  def change
    add_column :apts, :user_id, :integer
  end
end
