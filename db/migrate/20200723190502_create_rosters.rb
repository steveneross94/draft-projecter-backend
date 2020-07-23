class CreateRosters < ActiveRecord::Migration[6.0]
  def change
    create_table :rosters do |t|
      t.integer :team_id
      t.integer :player_id
      t.integer :user_price
    end
  end
end
