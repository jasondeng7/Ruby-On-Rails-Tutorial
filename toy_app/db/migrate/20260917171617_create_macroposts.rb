class CreateMacroposts < ActiveRecord::Migration[8.0]
  def change
    create_table :macroposts do |t|
      t.text :content
      t.integer :profile_id

      t.timestamps
    end
  end
end
