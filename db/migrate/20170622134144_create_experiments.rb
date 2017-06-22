class CreateExperiments < ActiveRecord::Migration[5.1]
  def change
    create_table :experiments do |t|
      t.integer :experimenter_id, null: false
      t.string :results, null: false
      t.string :conclusions, null: false
      t.references :proposal, null: false
      t.timestamps
    end
  end
end
