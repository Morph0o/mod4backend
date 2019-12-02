class CreateMonsterMoves < ActiveRecord::Migration[6.0]
  def change
    create_table :monster_moves do |t|
      t.string :name
      t.string :attack
      t.string :integer
      t.string :desc

      t.timestamps
    end
  end
end
