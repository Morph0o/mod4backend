class CreateUsermoves < ActiveRecord::Migration[6.0]
  def change
    create_table :usermoves do |t|
      t.integer :user_id
      t.integer :move_id

      t.timestamps
    end
  end
end
