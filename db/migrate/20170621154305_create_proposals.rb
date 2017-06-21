class CreateProposals < ActiveRecord::Migration[5.1]
  def change
    create_table :proposals do |t|
      t.string :name, null: false
      t.string :summary, null: false
      t.string :state, null: false
      t.string :hypothesis, null: false
      t.references :proposer, null: false

      t.timestamps
    end
  end
end
