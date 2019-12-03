class CreateMonsters < ActiveRecord::Migration[6.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.integer :str
      t.integer :hp
      t.string :desc
      t.string :img

      t.timestamps
    end
  end
end
