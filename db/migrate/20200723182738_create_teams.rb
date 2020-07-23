class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.integer :user_id
      t.string :name
      t.integer :budget, default: 200
      t.integer :num_qb, default: 1
      t.integer :num_rb, default: 2
      t.integer :num_wr, default: 2
      t.integer :num_te, default: 1
      t.integer :num_flex, default: 1
      t.integer :num_k, default: 1
      t.integer :num_def, default: 1
      t.integer :num_superflex, default: 0
      t.integer :num_bench, default: 4
    end
  end
end
