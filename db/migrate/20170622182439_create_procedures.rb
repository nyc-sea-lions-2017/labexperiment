class CreateProcedures < ActiveRecord::Migration[5.1]
  def change
    create_table :procedures do |t|
      t.name
      t.string :body, null: false
      t.references :experiment, foreign_key: true, null: false

      t.timestamps
    end
  end
end
