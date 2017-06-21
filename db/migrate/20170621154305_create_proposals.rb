class CreateProposals < ActiveRecord::Migration[5.1]
  def change
    create_table :proposals do |t|
      t.string :name
      t.string :summary
      t.string :state
      t.string :hypothesis
      t.references :proposer

      t.timestamps
    end
  end
end
