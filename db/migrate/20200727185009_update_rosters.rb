class UpdateRosters < ActiveRecord::Migration[6.0]
  def change
    add_column :rosters, :player_name, :string
    add_column :rosters, :player_position, :string
    add_column :rosters, :player_team, :string
  end
end
