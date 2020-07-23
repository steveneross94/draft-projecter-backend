class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :team
      t.string :position
      t.string :secondary_position, default: nil
      t.integer :default_price, default: 0
    end
  end
end
