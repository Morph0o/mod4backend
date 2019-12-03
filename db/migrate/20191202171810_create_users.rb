class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :string
      t.integer :str
      t.integer :hp
      t.string :desc
      t.string :img

      t.timestamps
    end
  end
end
