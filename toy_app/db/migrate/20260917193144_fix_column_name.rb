class FixColumnName < ActiveRecord::Migration[8.0]
  def change
    rename_column :macroposts, :profile_id, :profile_id
  end
end
