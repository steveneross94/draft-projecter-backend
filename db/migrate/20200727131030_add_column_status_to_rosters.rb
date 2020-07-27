class AddColumnStatusToRosters < ActiveRecord::Migration[6.0]
  def change
    add_column :rosters, :status, :string
  end
end
